require './people.rb'
require './politicians.rb'
require './voters.rb'
require './records.rb'

records = Records.new

puts "Welcome to ConstituentSim!"
puts "What would you like to do?"

begin

    puts "\n\n(C)reate, (L)ist, (U)pdate, or (D)elete"

    response = gets.chomp

    case response

        when "C"
            puts "(P)olitician or (V)oter?\n\n"
            create_type = gets.chomp
            case create_type
                when "P"
                    puts "\n\nName (Firstname Lastname)?"
                    politician_name = gets.chomp
                    puts "\n\nParty Affiliation: (D)emocrat or (R)epublican?"
                    politician_party = gets.chomp
                    case politician_party
                        when "D"
                        records.create_politician(politician_name, "Democrat")
                        puts "\n\nNew record for [#{politician_name}, Democrat] successfully created."
                        when "R"
                        records.create_politician(politician_name, "Republican")
                        puts "\n\nNew record for [#{politician_name}, Republican] successfully created."
                        else
                        puts "\n\ninvalid response"                
                    end    
                when "V"
                    puts "\n\nName (Firstname Lastname)?"
                    voter_name = gets.chomp
                    puts "\n\nPolitical Affiliation: (L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral?"
                    voter_affiliation = gets.chomp
                    case voter_affiliation
                        when "L"
                            records.create_voter(voter_name, "Liberal")
                            puts "\n\nNew record for [#{voter_name}, Liberal] successfully created."
                        when "C"
                            records.create_voter(voter_name, "Conservative")
                            puts "\n\nNew record for [#{voter_name}, Conservative] successfully created."
                        when "T"
                            records.create_voter(voter_name, "Tea Party")
                            puts "\n\nNew record for [#{voter_name}, Tea Party] successfully created."
                        when "S"
                            records.create_voter(voter_name, "Socialist")
                            puts "\n\nNew record for [#{voter_name}, Socialist] successfully created."
                        when "N"
                            records.create_voter(voter_name, "Neutral")
                            puts "\n\nNew record for [#{voter_name}, Neutral] successfully created." 
                        else
                            puts "invalid response"
                    end
            end    
            

        when "L"
            puts records.list_voters()
            puts records.list_politicians()

        when "U"
            puts "update"

        when "D"
            puts "(Firstname Lastname) of entry for deletion?"
            delete_name = gets.chomp
            person_delete = records.find_person_by_name(delete_name)
            if person_delete == nil
                puts "#{delete_name} not found in directory."
            else
                records.delete_person(person_delete)
                puts "#{delete_name} successfully deleted from directory."
            end

        else
            puts "invalid selection"
    end
    
end until response == 'X'
puts "goodbye"