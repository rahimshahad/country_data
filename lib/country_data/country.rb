class Country
    @@all = []
    attr_accessor :name, :capital, :population, :gini, :region, :area, :latitude, :longitude, :domain, :calling_code, :timezone, :demonym
    def initialize(result)
     result.each do |k,v|
        self.send "#{k}=", v if self.respond_to?("#{k}=", v)
     end
        save
        end
    def self.all
        @@all
    end
    def save
        @@all << self
    end
end
