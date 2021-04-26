# ValidatesHost 

[![Gem Version](https://badge.fury.io/rb/validates_host.png)](http://badge.fury.io/rb/validates_host) [![Build Status](https://secure.travis-ci.org/plribeiro3000/validates_host.png?branch=master)](http://travis-ci.org/plribeiro3000/validates_host) [![Coverage Status](https://coveralls.io/repos/plribeiro3000/validates_host/badge.png?branch=master)](https://coveralls.io/r/plribeiro3000/validates_host)  [![Code Climate](https://codeclimate.com/github/plribeiro3000/validates_host.png)](https://codeclimate.com/github/plribeiro3000/validates_host)

Validates host attributes and test it in a simple way.
Supports ruby 2.0+ and rails 3+

## Installation

Add this line to your application's Gemfile:

    gem 'validates_host'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install validates_host

## Usage

Just use like any other validator:

```ruby
class Server < ActiveRecord::Base
    validates :domain_name, domain_name: true
    validates :host_name, host_name: true
    validates :ip, ip: true
end

class Subnet < ActiveRecord::Base
    validates :value, subnet: true
end
```

## Notes

It will load a macher to test automatically if the gem is below shoulda-matchers.

## Mantainers
[@plribeiro3000](https://github.com/plribeiro3000)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
