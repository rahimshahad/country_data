class Country
    @@all = []
    attr_accessor :name, :capital, :population, :gini, :region, :area, :latitude, :longitude, :domain, :calling_code, :timezone, :demonym
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
