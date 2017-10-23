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
            puts "(Firstname Lastname) of person to update?"
            update_name = gets.chomp
            person_update = records.find_person_by_name(update_name)
            if person_update == nil
                puts "#{update_name} not found in directory."
            else
                puts "Updated name (Firstname Lastname)?"
                new_name = gets.chomp
                person_update.update_name(new_name)
                if person_update.is_a?(Voter)
                    puts "Updated political affiliation: (L)iberal, (C)onservative, (T)ea Party, (S)ocialist, or (N)eutral?"
                    new_pol_aff = gets.chomp
                    person_update.update_pol_aff(["Liberal", "Conservative", "Tea Party", "Socialist", "Neutral"].detect{ |pol_aff| pol_aff.start_with?(new_pol_aff)})
                else
                    puts "Updated party affiliation: (D)emocrat, (R)epublican?"
                    new_pol_aff = gets.chomp
                    person_update.update_party_aff(["Democrat", "Republican"].detect{ |pol_aff| pol_aff.start_with?(new_pol_aff)})                    
                end
                
            end
                

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