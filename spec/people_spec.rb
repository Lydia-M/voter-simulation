require './people'

describe People do
    it "is created with a first name and last name"
    person = People.new("Jane", "Doe")
    expect(person).to be_a(People)
end

end
