require './people.rb'

class Voter < Person
    attr_reader :pol_aff
    @@pol_aff_options = ["Liberal", "Conservative", "Tea Party", "Socialist", "Neutral"]
    
    def initialize(name, pol_aff)
        super(name)
        if @@pol_aff_options.include? pol_aff
            @pol_aff = pol_aff
        else
            raise ArgumentError
        end
    end
    
    def update_pol_aff (pol_aff)
        if @@pol_aff_options.include? pol_aff
            @pol_aff = pol_aff
        else
            raise ArgumentError
        end
    end
    
end
