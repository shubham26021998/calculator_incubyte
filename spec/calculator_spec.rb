require 'spec_helper'
require './calculator'

describe do
  context "Add the values given in string" do
    it "returns 0 for an empty string" do
      added_value = add("")
      expect(added_value).to eq(0)
    end

    it "returns 0 if argument not passed" do
      added_value = add
      expect(added_value).to eq(0)
    end

    it "returns single value if input string does not contain , delimeter" do
      added_value = add("12")
      expect(added_value).to eq(12)
    end

    it "returns sum if input string contains 2 numbers with , as delimeter" do
      added_value = add("12,13")
      expect(added_value).to eq(25)
    end

    it "returns 0 if input string is nil" do
      added_value = add(nil)
      expect(added_value).to eq(0)
    end

    it "returns Argument error if input string contains non integer values to sum" do
      expect{add("1,b")}.to raise_error(ArgumentError)
    end

    it "returns Argument error if input string contains only one non integer values to sum" do
      expect{add("b")}.to raise_error(ArgumentError)
    end

    it "returns Argument error if input string contains special characters to sum" do
      expect{add("1,$")}.to raise_error(ArgumentError)
    end

    it "returns Argument error if input string contains only one special characters to sum" do
      expect{add("$")}.to raise_error(ArgumentError)
    end

  end
end
