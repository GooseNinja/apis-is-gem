# # Ruby wrapper for the apis.is API

This gem wraps the apis.is API in a simple wrapper that is easy to use within your ruby projects

## Installation

To install this gem you can either type:

    gem install apis-is

in the terminal or you can add this to your gemfile

    gem 'apis-is'

And then execute:

    $ bundle

## Making requests

Using this wrapper is very simple, and you can use it for the following apis.is endpoints

+ Icelandic Bus System
+ Cars in Iceland
+ Icelandic cinema
+ Icelandic companies
+ Currency in relation to ISK
+ Bicyclecounter in Reykjavik
+ Earthquakes in Iceland
+ International flights in Iceland
+ Icelandic lottery
+ Particulates in Reykjavik
+ Icelandic Weather
+ Icelandic television schedules

## Ruby Example
```ruby
require 'apis'

# Fetch all active busses
response = Apis.busses

# prints out all active busses
puts response[:results]

# Fetch all busses by bus number
response = Apis.busses([1, 4, 14])

# prints out active busses number 1, 4 and 14
puts response[:results]
```

## Rails Example
```ruby
# in your Gemfile add
gem 'apis-is', require: 'apis'

# Then in your controller you can do
@response = Apis.busses

# And in your view file
<%= @response[:results] %>
```