require './people.rb'

class Politician < Person
    attr_reader :party_aff
    
    def initialize(name, party_aff)
        super(name)
        @party_aff = party_aff
    end
    
end
