require '.people.rb'

describe Politician do
    
    it "is created with a name and political party" do
        politician = Politician.new("Kamala Harris", "Democrat")
        expect(politician).to be_a(Politician)
    
    it "can report its name" do
        politician = politician.new("Kamala Harris", "Democrat")
        expect(politician.name).to eq("Kamala Harris")
        
    it "can report its affiliation" do
        politician = Politician.new("Kamala Harris", "Democrat")
        expect(politician.pol_party).to eq("Kamala Harris")
    end
    
    
end