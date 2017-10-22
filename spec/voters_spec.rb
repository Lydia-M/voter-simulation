require './voters.rb'

describe Voter do
    
    it "is created with a name and political affiliation" do
        voter = Voter.new("Lydia Mansfield", "Liberal")
        expect(voter).to be_a(Voter)
        expect{Voter.new("Lydia Mansfield", "Democrat")}.to raise_error(ArgumentError)
        
    end
    
    it "can report its name" do
        voter = Voter.new("Lydia Mansfield", "Liberal")
        expect(voter.name).to eq("Lydia Mansfield")
    end
        
    it "can report its affiliation" do
        voter = Voter.new("Lydia Mansfield", "Liberal")
        expect(voter.pol_aff).to eq("Liberal")
    end
    
    it "can update its affiliation" do
        voter = Voter.new("Lydia Mansfield", "Liberal")
        voter.update_pol_aff("Neutral")
        expect(voter.pol_aff).to eq ("Neutral")
        expect{voter.update_pol_aff("Spongebob")}.to raise_error (ArgumentError)
    end
end

