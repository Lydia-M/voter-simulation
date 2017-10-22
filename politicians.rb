require './people.rb'

class Politician < Person
    attr_reader :pol_party
    
    def initialize(name, pol_party)
        super(name)
        @pol_party = pol_party
    end
    
end
