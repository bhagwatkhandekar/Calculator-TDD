require "rspec"
require_relative "string_calculator"

describe StringCalculator do
  before do
    @calculator = StringCalculator.new
  end

  it "returns 0 for an empty string" do
    expect(@calculator.add("")).to eq(0)
  end

  it "returns the sum of two numbers" do
    expect(@calculator.add("10,5")).to eq(6)
  end

end
