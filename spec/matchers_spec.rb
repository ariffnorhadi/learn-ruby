# Matchers in RSpec
# References: https://www.tutorialspoint.com/rspec/rspec_matchers.htm

# Equality/Identity Matchers
describe "an example of the equality Matchers" do
  it "should show how the equality Matchers work" do
    a = 'test string'
    b = a

    # ALL the following Expectations will pass
    expect(a).to eq 'test string' # passes when actual == expected
    expect(a).to eql "test string" # passes when actual.eql?(expected)
    expect(a).to be b # passes when actual.equal?(expected)
    expect(a).to equal b # passes when actual.equal?(expected)
  end
end

# Comparison Matchers
describe "an example of the comparison Matchers" do
  it "should show how the comparison Matchers work" do
    a = 1
    b = 2
    c = 3
    d = 'test string'

    # all the following expectations will pass
    expect(b).to be > a
    expect(a).to be >= a
    expect(a).to be < b
    expect(b).to be <= b
    expect(b).to be_between(1,3).inclusive # passes when actual <= min and >= max
    expect(b).to be_between(1,3).exclusive # passes when actual < min and > max
    expect(c).to be_between(1,3).inclusive
    expect(d).to match /TEST/i # passes when actual matches a regular expression, eg. expect(actual).to match(/regex/)
  end
end

# Class/Type Matchers
describe 'an example of the type/class Matchers'do
  it 'should show how the type/class Matchers work' do
    x = 1
    y = 3.14
    z = 'test string'

    # all the following expectations will pass
    expect(x).to be_instance_of Integer # passes when actual is an instance of the expected class
    expect(y).to be_kind_of Numeric # passes when actual is an instance of the expected class or any of its parent classes
    expect(z).to respond_to(:length) # passes when actual responds to the specified method
  end
end

# True/False/Nil Matchers
describe 'an example of the true/false/nil Matchers' do
  it 'should show how the true/false/nil Matchers work' do
    x = true
    y = false
    z = nil
    a = 'test string'

    # all the following expectations will pass
    expect(x).to be true # be true - passes when actual == true
    expect(y).to be false # be false - passes when actual == false
    expect(a).to be_truthy # be_truthy - passes when actual is not false or nil
    expect(z).to be_falsey # be_falsey - passes when actual is false or nil
    expect(z). to be_nil # be_nil - passes when actual is nil
  end
end

#  Error Matchers
describe 'an example of the error Matchers' do
  it 'should know how the error Matchers work' do

    # all the following expectations will pass
    expect {1/0}.to raise_error{ZeroDivisionError}
    expect {1/0}.to raise_error("divided by 0")
    expect {1/0}.to raise_error("divided by 0", ZeroDivisionError)
  end
end





