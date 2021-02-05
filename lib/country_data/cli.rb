class Cli
    def run
        puts "   ------------   "
        puts "  -            -"
        puts " -    WELCOME   -"
        puts "  -            -"
        puts "   ------------   "
        puts "                  "
        puts "Here for a little Geography lesson?: yes/no"
        input = gets.strip.downcase
        puts "                                    "
        user_initial_input(input)
        more_info_input = gets.strip
        until more_info_input == "exit"
            if more_info_input.to_i.between?(1, Country.all.length)
                choice = Country.all[more_info_input.to_i - 1]
                country_info(choice)
            elsif more_info_input == "back" 
                Country.all.each.with_index(1) do |country, index|
                    puts "#{index}.#{country.name} - #{country.capital}"
                end
            else
                puts "This is not a valid option."
            end
            follow_up_message
            more_info_input = gets.strip
         end

    end

    def user_initial_input(input)
        if input == "yes" || input == "y"
            puts "           "
            puts "Here's a list of countries and their capitals."
            Api.get_country
            Country.all.each.with_index(1) do |country, index|
                puts "#{index}.#{country.name} - #{country.capital}"
            end
            follow_up_message
        elsif
            input == "no" || input == "n"
            abort "Thanks! See ya hopefully next time!"
        else
            puts "This is not a valid option"
        end
    end

    def country_info(country)
        puts "name: #{country.name}"
        puts "----------------------"
        puts "capital: #{country.capital}"
        puts "----------------------"
        puts "region: #{country.region}"
        puts "----------------------"
        puts "population: #{country.population}"
        puts "----------------------"
        puts "gini: #{country.gini}"
        puts "----------------------"
        puts "area: #{country.area}"
        puts "----------------------"
        puts "latitude: #{country.latitude}"
        puts "----------------------"
        puts "longitude: #{country.longitude}"
        puts "----------------------"
        puts "demonym: #{country.demonym}"
        puts "----------------------"
        puts "call_code: #{country.calling_code}"
        puts "----------------------"
        puts "timezone: #{country.timezone}"
        puts "----------------------"
        puts "domain: #{country.domain}"
    end

    def follow_up_message
        puts "Type a number to learn more about that country, or 'exit' to leave the app."
        puts "You can also enter 'back' to return to the list of countries."
    end

end
