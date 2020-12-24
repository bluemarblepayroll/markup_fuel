# Markup Fuel

[![Gem Version](https://badge.fury.io/rb/markup_fuel.svg)](https://badge.fury.io/rb/markup_fuel) [![Build Status](https://travis-ci.com/bluemarblepayroll/markup_fuel.svg?branch=master)](https://travis-ci.com/bluemarblepayroll/markup_fuel) [![Maintainability](https://api.codeclimate.com/v1/badges/e38efa993c8292a45a99/maintainability)](https://codeclimate.com/github/bluemarblepayroll/markup_fuel/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/e38efa993c8292a45a99/test_coverage)](https://codeclimate.com/github/bluemarblepayroll/markup_fuel/test_coverage) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This library is a plugin for [Burner](https://github.com/bluemarblepayroll/burner).  It adds jobs focused around XML processing such as reading and writing XML documents.  XML can get very non-trivial quickly, but this library aims at implementing only what is identified as necessary for XML processing.  Pull requests are welcomed to add more additional functionality.

## Installation

To install through Rubygems:

````bash
gem install markup_fuel
````

You can also add this to your Gemfile:

````bash
bundle add markup_fuel
````
## Jobs

Refer to the [Burner](https://github.com/bluemarblepayroll/burner) library for more specific information on how Burner works.  This section will just focus on what this library directly adds.

* **markup_fuel/deserialize/xlsx** [register, sheet_mappings]: Take the register, parse it as a Microsoft Excel Open XML spreadsheet and store the sheet data in the specified sheet_mappings' registers.  Each sheet mapping specifies which sheet to read and where to place the parsed data.  If no sheet mappings are specified then the default sheet will be parsed and placed in the register.
* **markup_fuel/serialize/xlsx** [register, sheet_mappings]: Create a Microsoft Excel Open XML workbook and write all specified register data into their respective sheets.  The sheet_mappings will specify which sheets get data and from which register.

## Examples

### Parsing (de-serializing) an XML Document

TODO

### Writing (serializing) an XML Document

TODO

## Contributing

### Development Environment Configuration

Basic steps to take to get this repository compiling:

1. Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (check markup_fuel.gemspec for versions supported)
2. Install bundler (gem install bundler)
3. Clone the repository (git clone git@github.com:bluemarblepayroll/markup_fuel.git)
4. Navigate to the root folder (cd markup_fuel)
5. Install dependencies (bundle)

### Running Tests

To execute the test suite run:

````bash
bundle exec rspec spec --format documentation
````

Alternatively, you can have Guard watch for changes:

````bash
bundle exec guard
````

Also, do not forget to run Rubocop:

````bash
bundle exec rubocop
````

### Publishing

Note: ensure you have proper authorization before trying to publish new versions.

After code changes have successfully gone through the Pull Request review process then the following steps should be followed for publishing new versions:

1. Merge Pull Request into master
2. Update `lib/markup_fuel/version.rb` using [semantic versioning](https://semver.org/)
3. Install dependencies: `bundle`
4. Update `CHANGELOG.md` with release notes
5. Commit & push master to remote and ensure CI builds master successfully
6. Run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Code of Conduct

Everyone interacting in this codebase, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/bluemarblepayroll/markup_fuel/blob/master/CODE_OF_CONDUCT.md).

## License

This project is MIT Licensed.

