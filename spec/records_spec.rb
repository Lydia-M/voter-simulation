require './records.rb'

describe Records do
    
#     Test Instantiation of Records
    it "is created" do
        records = Records.new()
        expect(records).to be_a(Records)
    end
    
    it "can create a voter record" do
        records = Records.new()
        records.create_voter("Omar Shaikh" , "Liberal")
        expect(records.voters.count).to be(1)
    end
    
    it "can create a politician record" do
        records = Records.new()
        records.create_politician("Frederica Wilson" , "Democrat")
        expect(records.politicians.count).to be(1)
    end
    
    it "can list all voters" do
        records = Records.new()
        records.create_voter("Omar Shaikh" , "Liberal")
        voter_list = records.list_voters()
        expect(voter_list).to eq("voter, Omar Shaikh, Liberal\n")
    end

    it "can list all politicians" do
        records = Records.new()
        records.create_politician("Gwen Graham" , "Democrat")
        politician_list = records.list_politicians()
        expect(politician_list).to eq("politician, Gwen Graham, Democrat\n")
    end

    it "can update a voter"
#     it "can update a politician"
#     it "can delete a voter"
#     it "can delete a politician"
    