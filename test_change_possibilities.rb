require 'rspec'
require_relative './question3.rb'

describe "Function returns given output" do
  it "INPUT: (4, [1,2,3,]); OUTPUT: 4" do
    expect(changePossibilities(4,[1,2,3,])).to eql(4)
  end
end
