# frozen_string_literal: true
require 'pry'
require 'httparty'



require_relative './country_data/country.rb'
require_relative './country_data/api.rb'
require_relative './country_data/cli.rb'
require_relative "country_data/version"


module CountryData
  class Error < StandardError; end
  # Your code goes here...
end
