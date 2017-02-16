# AutoSeed

This gem is designed to create a seed file that is idempotent and atomic.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'AutoSeed'
```
And then execute:

    $ bundle

Or install it yourself as:

    $ gem install AutoSeed

## Examples

rake db:create_seeds INCLUDE=User,Industry,Language

rake db:create_seeds EXCLUDE=Session,Status

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

