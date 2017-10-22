require './people.rb'

class Voter < Person
    attr_reader :pol_aff
    
    def initialize(name, pol_aff)
        super(name)
        @pol_aff = pol_aff
    end
    
end
