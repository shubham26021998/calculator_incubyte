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

  end
end
