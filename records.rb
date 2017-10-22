require './people.rb'
require './politicians.rb'
require './voters.rb'

class Records
   
    attr_reader :voters
    attr_reader :politicians
    
    def initialize()
        @voters = []
        @politicians = []
    end
    
#CREATE RECORD
#New Voters  
    def create_voter(name, pol_aff)
        voter = Voter.new(name, pol_aff)
        @voters.push(voter)
    end
 #New Politicians       
    def create_politician (name, party_aff)
        politician = Politician.new(name, party_aff)
        @politicians.push(politician)
    end
    
    def list_voters
        records = ""
        @voters.each do | voter |
            records += "voter, #{voter.name}, #{voter.pol_aff}\n"
        end
        return records
    end
    
    def list_politicians
        records = ""
        @politicians.each do | politician |
            records += "politician, #{politician.name}, #{politician.party_aff}\n"
        end
        return records
    end
    
    def find_person_by_name(name)
        person = @voters.detect{ |voter| voter.name.eql?(name) }
        if person == nil
            person = @politicians.detect{ |voter| voter.name.eql?(name) }
        end
        return person
    end
        
    def delete_person(person)
        if person.is_a?(Voter)
            @voters.delete(person)
        else
            @politicians.delete(person)
        end
    end
end

##MAIN MENU
##
#
###Create an instance of records
# voter_records = Records.new

# puts "Wdywtd?"
# puts "Options: Create, Update, Delete"

# user_input = gets.chomp

# case user_input
#     when "C"
#     records.create_voter
#     when "L"
#     records.list_all_voters
    
    