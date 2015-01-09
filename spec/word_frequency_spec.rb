require('rspec')
require('word_frequency')

describe('String#word_frequency') do
  it ("will check to see if the words are the same") do
    expect(("pearl").word_frequency("pearl")).to(eq(1))
  end

  it ("will check to see if the words are not the same") do
    expect(("pearl").word_frequency("dog")).to(eq(0))
  end

  it ("will check to see if there are multiple times the word appears in the phrase") do
    expect(("pearl").word_frequency("pearl is the pearl dog")).to(eq(2))
  end

  it ("will account for capital letters") do
    expect(("Pearl").word_frequency("Pearl is the pearl dog")).to(eq(2))
  end

  it ("will account for punctuation") do
    expect(("Pearl").word_frequency("Pearl! Pearl is the pearl dog")).to(eq(3))
  end

end
