ActionView::Helpers::UrlHelper.module_eval do
  def url_for(options = nil)
    case options
    when String
      options
    when :back
      _back_url
    when :back_to_anchor
      _back_to_anchor_url
    else
      raise ArgumentError, "arguments passed to url_for can't be handled. Please require " \
                           "routes or provide your own implementation"
    end
  end

  def _back_to_anchor_url
    referrer = _filtered_referrer
    if referrer
      anchor_param = controller.request.query_parameters.dig(:to_anchor)
      anchor_param ? "#{referrer}##{anchor_param}" : referrer
    else
      "javascript:history.back()"
    end
  end
  protected :_back_to_anchor_url
end
