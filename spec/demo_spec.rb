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

  let(:message) { 'number is more than one '}
  let(:number) { 2 }

  subject { described_class.new(string: 'message', number: 2) }

  it 'should return number more than one' do
    expect()
  end

end
