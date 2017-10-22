require './records.rb'

class Records
    def create_voter() 
    end
    
    def list_all_voters
    end
    
end

##MAIN MENU
##
#
###Create an instance of records
voter_records = Records.new

puts "Wdywtd?"
puts "Options: Create, Update, Delete"

user_input = gets.chomp

case user_input
    when "C"
    records.create_voter
    when "L"
    records.list_all_voters
    
    