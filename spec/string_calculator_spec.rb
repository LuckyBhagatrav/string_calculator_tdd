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

  # handling multiple numbers============================
  it "returns the sum of two comma-separated numbers" do
    calculator = StringCalculator.new
    expect(calculator.add("1,2")).to eq(3)
  end

  it "returns the sum for multiple numbers" do
    calculator = StringCalculator.new
    expect(calculator.add("1,2,3,4")).to eq(10)
  end

  # allow newlines as separators============================
  it "handles newlines between numbers" do
    calculator = StringCalculator.new
    expect(calculator.add("1\n2,3")).to eq(6)
  end


  # custom delimiters===================================
  it "supports custom delimiter" do
    calculator = StringCalculator.new
    expect(calculator.add("//;\n1;2")).to eq(3)
  end

  # edge cases- negative numbers============================
  it "raises an error for a single negative number" do
    calculator = StringCalculator.new
    expect { calculator.add("1,-2,3") }.to raise_error("negative numbers not allowed: -2")
  end

  it "raises an error listing all negative numbers" do
    calculator = StringCalculator.new
    expect { calculator.add("-1,-2,3") }.to raise_error("negative numbers not allowed: -1, -2")
  end

end
