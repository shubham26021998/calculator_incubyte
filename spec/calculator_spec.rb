require 'spec_helper'
require './calculator'

describe do
  context "Add the values given in string with , as delimeter and maximum of 2 numbers to sum" do
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

  context "Add the values given in string with , as delimeter and any numbers of integers to sum" do
    it "returns correct sum if input string has more than 2 integers" do
      added_value = add("1,2,3")
      expect(added_value).to eq(6)
    end
  end

  context "Allow the Add method to handle new lines between numbers (instead of commas)." do
    it "returns correct sum if newline is used as delimeter" do 
      added_value = add("1\n2,3")
      expect(added_value).to eq(6)
    end

    it "raises ArgumentError is input has both delimeters side by side" do 
      expect{add("1,\n")}.to raise_error(ArgumentError)
    end

    it "raises ArgumentError is input has , delimeters side by side" do 
      expect{add("1,,1")}.to raise_error(ArgumentError)
    end

    it "raises ArgumentError is input has \n delimeters side by side" do 
      expect{add("1\n\n1")}.to raise_error(ArgumentError)
    end

  end

end
