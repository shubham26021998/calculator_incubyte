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

  end
end
