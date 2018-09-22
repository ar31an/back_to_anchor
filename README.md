# BackToAnchor

An Alternative to (link_to :back) that also allows the anchor to be passed along with the URL.

# When should you use it

Lets say you have a long page with lots of information and the user scrolls down to some element on the page, and then clicks on a link to navigate to a new page.

Now, on this page you have a (link_to :back) which will take user back to the previous page. But, in doing so the user will be redirected to the start of the page instead. Wouldn't it be better, if the user was scrolled to the same element from where they navigated to the new page?

That's where this gem comes in handy, as the user will be redirected to the page along with anchor so the page scrolls down to specific element automatically.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'back_to_anchor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install back_to_anchor

## Usage

Just pass the param (to_anchor) from the page where you want the user to be redirected back and scrolled down to specific element. e.g.

```ruby
= link_to 'New Page', new_page_path(to_anchor: 'div_id_123')
```

And then, just add this link to the New Page:

```ruby
= link_to 'Go back to previous page', :back_to_anchor
```

Which in turn would generate the following URL:

```ruby
https://example.org/previous-page#div_id_123`
```

That's all :-)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ar31an/back_to_anchor. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BackToAnchor project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ar31an/back_to_anchor/blob/master/CODE_OF_CONDUCT.md).
