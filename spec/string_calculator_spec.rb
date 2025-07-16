require_relative '../lib/string_calculator'
RSpec.describe "StringCalculator" do
  # simple cases=================================
  it "returns 0 when input is an empty string" do
    calculator = StringCalculator.new
    expect(calculator.add("")).to eq(0)
  end

  it "returns the number when only one is provided" do
    calculator = StringCalculator.new
    expect(calculator.add("1")).to eq(1)
  end

  it "returns the sum of two comma-separated numbers" do
    calculator = StringCalculator.new
    expect(calculator.add("1,2")).to eq(3)
  end

end
