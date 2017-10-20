require './people.rb'

describe Person do
    it "is created with a name" do
        people.new = Person.new("Lydia Mansfield")
        expect(people).to be_a(Person)
    end
    
    it "can report its name" do
        people = Person.new("Lydia Mansfield")
        expect(people.name).to eq("Lydia Mansfield")
    end   
end
