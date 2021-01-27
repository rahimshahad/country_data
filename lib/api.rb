require 'httparty'
require 'pry'
class Api
    # response = HTTParty.get("https://restcountries.eu/rest/v2/")
    def self.get_country
        response = HTTParty.get("https://restcountries.eu/rest/v2/all")
        response.map do |result|
         result
         country = Country.new(name: result["name"], capital: result["capital"])
         country.name =  result["name"]
         country.capital = result["capital"]
         
         country.population = result["population"]
         country.gini = result["gini"]
         country.region = result["region"]
            end
            # binding.pry
    end
end



class Country
    @@all = []
    attr_accessor :name, :capital, :population, :gini
    attr_reader :region, :area
    def initialize(name:, capital:)
        @name = name
        @capital = capital
        @population = population
        @area = area
        @gini = gini
        @region = region
        save
    end
    def self.all
        @@all
    end
    def save
        @@all << self
    end
end
#  Api.get_country
