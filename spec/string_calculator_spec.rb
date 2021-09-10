require 'string_calculator.rb'

describe StringCalculator do

  describe ".add" do
    context "two numbers" do

      context "given '2,4'" do
        it "returns 6" do
          expect(StringCalculator.add("2,4")).to eql(6)
        end
      end

      context "given '17,100'" do
        it "returns 117" do
          expect(StringCalculator.add("17,100")).to eql(117)
        end
      end

    end
  end

end

# with rspec, we are always describing the behaviour of classes,
# modules and their methods. the describe block is always used at the top to put
# specs in context
#
# to run specs, type
# bundle exec rspec