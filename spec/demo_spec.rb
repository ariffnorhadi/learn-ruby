class Demo

  attr_reader :string, :number

  def initialize(string, number)
    @string = string
    @number = number
  end

  def fail_message
    if @number > 1
      'number is more than one'
    else
      'number is not more than one'
    end
  end
end

RSpec.describe Demo do

  context "when number is more than one" do
    let(:message) { 'number is more than one'}
    let(:number) { 2 }

    it 'should return number more than one' do
      test = Demo.new(message, number)
      expect(test.fail_message).to eq(message)
    end
  end

  context "when number is not more than one" do
    let(:message) { 'number is not more than one'}
    let(:number) { 1 }

    it "should return number is not more than one" do
      test = Demo.new(message, number)
      expect(test.fail_message).to eq(message)
    end
  end
end
