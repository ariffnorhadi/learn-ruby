# Reference: https://www.tutorialspoint.com/rspec/rspec_writing_specs.htm

require 'string_analyzer.rb'

describe StringAnalyzer do
  context "With valid input" do

    it "should detect when a string contains vowels" do
      sa = StringAnalyzer.new
      test_string = 'uuu'
      expect(sa.has_vowels?(test_string)).to be true
    end

    it "should detect when a string doesn't contain vowels" do
      obj_2 = StringAnalyzer.new
      test_string_2 = 'qwrtyp'
      expect(obj_2.has_vowels?(test_string_2)).to be false
    end

  end
end

