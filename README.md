# Ramen::Cli

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/ramen/cli`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem
The Ramen CLI will allow the user to view a list of ramen restaurants in the Oceanside area. The user can view restaurants 1-5 or 1-13. Users can then choose to view details for a specific restaurant (phone number, address, # of stars, website) or restart the program. The user can exit the program or view another restaurant (restart program). 

What website will you be scraping?- https://sandiego.eater.com/

What will you need to do with the data you return from scraping? - store data to create list of restaurants and detailed listing for each restaurant.

What classes will you be using? - Print restaurant, initialize, scrapers, @@all, find

What will be the flow of displaying data for your application. ex How will your CLI portion work. - Display 1-5 or complete list (1-13). User can then opt to view additional details about a specific restaurant given the number of the restaurant.

How will you display data one level deep to the user? - Users can view details about a specific restaurant.

What will need to be in your README file? - Instructions on how to use the program.

List display:
Restaurant #. Restaurant name
Description(one sentence if possible)

Detailed display:
Restaurant #. Restaurant name
Address (2 lines)
Phone number
Description
website
Yelp review

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ramen-cli'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ramen-cli

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'kagflores'/ramen-cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Ramen::Cli project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'kagflores'/ramen-cli/blob/master/CODE_OF_CONDUCT.md).
