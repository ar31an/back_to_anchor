# BackToAnchor

An Alternative to link_to :back that also allows the anchor to be passed along with the URL.

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

First, pass the named anchor as a param to the new page from old page:

Old Page:
`https://example.org/old-page`

New Page:
`https://example.org/new-page?to_anchor=div_id_123`


And then, just add this line to new page to redirect users to old page with anchor:

```ruby
= link_to 'Go back to previous page with anchor', :back_to_anchor
```

Which in turn would generate the following URL:
`https://example.org/old-page#div_id_123`


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ar31an/back_to_anchor. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the BackToAnchor project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/ar31an/back_to_anchor/blob/master/CODE_OF_CONDUCT.md).
