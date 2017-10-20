require '.voter.rb'

describe Voter do
    
    it "is created with a name and political affiliation" do
        voter = Voter.new("David Corp", "Liberal")
        expect(voter).to be_a(Voter)
    
    it "can report its name" do
        voter = Voter.new("David Corp", "Liberal")
        expect(voter.name).to eq("David Corp")
        
    it "can report its affiliation" do
        voter = Voter.new("David Corp", "Liberal")
        expect(voter.pol_aff).to eq("David Corp")
    end
    
    
end

