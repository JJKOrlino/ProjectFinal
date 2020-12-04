#CLI Controller
class NikeDeal::CLI
    #attr_accessor :name, :price, :availability, :url

    def call
        list_deals
        menu
        goodbye
    end

    def list_deals

        puts "Latest Products:"
        @deals = NikeDeal::Deal.today
        @deals.each.with_index(1) do |deal, i|
            puts "#{i}. #{deal.name}"
        end
    end

    def menu
        input = nil
        while input != "exit"
            puts "Enter Product Number, List, or Exit."
            input = gets.strip
            
            if input.to_i > 0
                the_deal = @deals[input.to_i-1]
                puts "#{the_deal.price}"
            elsif input == "list"
                list_deals
            else
                puts "Invalid entry."
            end
        end
    end

    def goodbye
        puts "See you tomorrow!"
    end
end