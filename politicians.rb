require './people.rb'

class Politician < Person
    attr_reader :party_aff
    @@party_aff_options = ["Democrat", "Republican"]
    
    def initialize(name, party_aff)
        super(name)
        if @@party_aff_options.include? party_aff
            @party_aff = party_aff
        else
            raise ArgumentError
        end
    end
    
    def update_party_aff (party_aff)
        if @@party_aff_options.include? party_aff
            @party_aff = party_aff
        else
            raise ArgumentError
        end
    end
    
end
