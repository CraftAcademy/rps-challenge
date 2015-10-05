require 'byebug'
require 'capybara/rspec'
require 'coveralls'
require 'simplecov'
require 'sinatra'

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!



