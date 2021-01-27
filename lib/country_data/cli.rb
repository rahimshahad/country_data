class Cli
    Api.get_country
    def run
        puts "   ------------   "
        puts "  -            -"
        puts " -    WELCOME   -"
        puts "  -            -"
        puts "   ------------   "
        puts "                  "
        puts "Here for a little Geography lesson?: yes/no"
        user_input = gets.strip.downcase
        follow_up_message if user_initial_input(input)
        more_info_input = gets.strip
        
        unless more_info_input == "exit"
            if more_info_input.to_i.between?(1, Country.all.length)
                choice = Country.all[more_info_input.to_i - 1]



    end

    def user_initial_input(input)
        if input == "yes" || input == "y"
            puts "           "
            puts "Here's a list of countries and their capitals."
            #code that creates countries**
            #code that lists countries and capitals
            Api.get_country
            Country.all.each.with_index(1) do |country, index|
                puts "#{index}.#{country.name} - #{country.capital}"
            end
        elseif
            input == "no" || input == "n"
            #code to exit app
            abort "Thanks! See ya hopefully next time!"
        else
            puts "This is not a valid option"
            user_initial_input(input)
        end
    end

    def follow_up_message
        puts " Type a number to learn more about that country, or 'exit' to leave the app."
        puts "You can also enter 'back' to return to the list of countries."
    end
    
    def country_info(country)
        puts "name: #{country.name}"
        puts "----------------------"
        puts "capital: #{country.capital}"
        puts "----------------------"
        puts "region: #{country.region}"
        puts "----------------------"
        puts "population: #{country.region}"
        puts "----------------------"
        puts "gini: #{country.gini}"
        puts "----------------------"
        puts "area: #{country.area}"
    end
end
