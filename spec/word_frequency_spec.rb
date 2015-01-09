require('rspec')
require('word_frequency')

describe('String#word_frequency') do
  it ("will check to see if the words are the same") do
    expect(("pearl").word_frequency("pearl")).to(eq(1))
  end
  it ("will check to see if the words are not the same") do
    expect(("pearl").word_frequency("dog")).to(eq("Your word does not appear in these words!"))
  end
end
