require 'rspec'
require_relative './question2.rb'

describe "Function returns given output" do
  it "INPUT: '4[ab]'; OUTPUT: 'abababab'" do
    expect(decodeString("4[ab]")).to eql("abababab")
  end
  it "INPUT: '2[b3[a]]'; OUTPUT: 'baaabaaa'" do
    expect(decodeString("2[b3[a]]")).to eql("baaabaaa")
  end
end
