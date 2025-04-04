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

  it "returns the number itself when only one number is given" do
    expect(@calculator.add("1")).to eq(1)
  end

  it "supports different delimiters" do
    expect(@calculator.add("//;\n1;2")).to eq(3)
  end

  it "raises an exception for negative numbers" do
    expect { @calculator.add("1,-2,3,-4") }.to raise_error("Negative numbers not allowed: -2, -4")
  end

end
