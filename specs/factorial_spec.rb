require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/factorial'

describe "factorial" do
  describe "basic tests" do
    it "factorial(5) = 120" do
      factorial(5).must_equal 120
    end

    it "factorial(7) = 5040" do
      factorial(7).must_equal 5040
    end
  end

  # check for edge cases
  describe "edge cases" do
    # if the parameter is an object, check for nil
    it "nil object is not an integer" do
      proc {factorial(nil)}.must_raise ArgumentError
    end

    it "factorial(0) = 1" do
      factorial(0).must_equal 1
    end

    it "factorial(1) = 1" do
      factorial(1).must_equal 1
    end
  end
end
