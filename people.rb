class Person
    attr_reader :name
    
    def initialize(name)
        @name = name
    end
    
    def update_name (name)
        @name = name
    end
end
