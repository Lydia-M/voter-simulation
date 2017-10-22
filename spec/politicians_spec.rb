require './politicians.rb'

describe Politician do
    
    it "is created with a name and political party" do
        politician = Politician.new("Kamala Harris", "Democrat")
        expect(politician).to be_a(Politician)
        expect{Politician.new("Kamala Harris", "Spongebob")}.to raise_error(ArgumentError)
    end
    
    it "can report its name" do
        politician = Politician.new("Kamala Harris", "Democrat")
        expect(politician.name).to eq("Kamala Harris")
    end
    
    it "can report its affiliation" do
        politician = Politician.new("Kamala Harris", "Democrat")
        expect(politician.party_aff).to eq("Democrat")
    end
    
    it "can update its affiliation" do
        politician = Politician.new("Kamala Harris", "Democrat")
        politician.update_party_aff("Republican")
        expect(politician.party_aff).to eq ("Republican")
        expect{politician.update_party_aff("Spongebob")}.to raise_error (ArgumentError)
    end
    
end