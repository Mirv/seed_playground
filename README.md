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

rake db:seed:generate
    => Runs against all models

rake db:seed:generate INCLUDE=User,Industry,Language
    => Runs only User, Industry, Language models

rake db:seed:generate EXCLUDE=Session,Status
    => Runs all but Session, Status models

rake db:seed:v2:generate REPS=3   
    =>  Runs 3 iterations 

rake db:seed:v2:generate REPS=3 ONLY=User    
    =>  Runs 3 iterations on the User model

rake db:seed:speedtest
    => {Setup rake task for this!}
    
TODO - gem for hanlding options logic

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

