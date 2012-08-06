# ValidatesHost [![Build Status](https://secure.travis-ci.org/plribeiro3000/validates_host.png?branch=master)](http://travis-ci.org/plribeiro3000/validates_host)

Rails gem to validate Host Related fields.

## Installation

Add this line to your application's Gemfile:

    gem 'validates_host'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install validates_host

## Usage

Lets say you have a model that you want to have valid host fields. Just add this to your model:

```ruby
class Server < ActiveRecord::Base
    validates :domain_name, :domain_name => true
    validates :host_name, :host_name => true
    validates :ip, :ip => true
end

class Subnet < ActiveRecord::Base
    validates :value, :subnet => true
end
```

## Test

This gem has builtin matchers for shoulda-matchers and remarkable.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
