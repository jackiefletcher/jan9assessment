require('rspec')
require('word_frequency')

describe('String#word_frequency') do
  it ("will check to see if the words are the same") do
    expect(("pearl").word_frequency("pearl")).to(eq(1))
  end
end
