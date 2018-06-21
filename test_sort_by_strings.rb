require 'rspec'
require_relative './question1.rb'

describe "Function returns given output" do
  it "INPUT: 'weather' and 'therapyw'; OUTPUT: 'theeraw'" do
    expect(sortByStrings("weather", "therapyw")).to eql("theeraw")
  end
  it "INPUT: 'good' and 'odg'; OUTPUT: 'theeraw'" do
    expect(sortByStrings("good", "odg")).to eql("oodg")
  end
end
