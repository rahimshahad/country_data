class Api
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
         country.area = result["area"]
            end
    end

    
end


 
