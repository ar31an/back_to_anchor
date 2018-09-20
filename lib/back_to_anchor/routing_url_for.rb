ActionView::RoutingUrlFor.module_eval do
  def url_for(options = nil)
    case options
    when String
      options
    when nil
      super(only_path: _generate_paths_by_default)
    when Hash
      options = options.symbolize_keys
      unless options.key?(:only_path)
        options[:only_path] = only_path?(options[:host])
      end

      super(options)
    when ActionController::Parameters
      unless options.key?(:only_path)
        options[:only_path] = only_path?(options[:host])
      end

      super(options)
    when :back
      _back_url
    when :back_to_anchor
      _back_to_anchor_url
    when Array
      components = options.dup
      if _generate_paths_by_default
        polymorphic_path(components, components.extract_options!)
      else
        polymorphic_url(components, components.extract_options!)
      end
    else
      method = _generate_paths_by_default ? :path : :url
      builder = ActionDispatch::Routing::PolymorphicRoutes::HelperMethodBuilder.send(method)

      case options
      when Symbol
        builder.handle_string_call(self, options)
      when Class
        builder.handle_class_call(self, options)
      else
        builder.handle_model_call(self, options)
      end
    end
  end
end
