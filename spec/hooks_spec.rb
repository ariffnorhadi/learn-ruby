# RSpec - Hooks
# https://www.tutorialspoint.com/rspec/rspec_hooks.htm

# when writing unit tests, it is convenient to run setup and teardown code before and after tests
# setup code is the code that configures condition for a test
# teardown code do the cleanup, it makes sure that the env is in a consistent state for subsequent tests

# the most common hooks used in RSpec are before and after hooks

# for instance

class SimpleClass
  attr_accessor :message

  def initialize
    puts "\nCreating a new instance of the SimpleClass class"
    @message = 'hey_<name>'
  end

  def update_message(new_message)
    @message = new_message
  end
end

describe SimpleClass do
  # define setup code, when we pass :each argument, this method is to run before each example
  before(:each) do
    @simple_class = SimpleClass.new
  end

  it 'should have an initial message' do
    expect(@simple_class).to_not be_nil
  end

  it 'should be able to change its message' do
    @simple_class.update_message('salam_<name>')
    expect(@simple_class).to_not be 'hey_<name>'
  end
end

# after hook, both before and after hooks can take :all as an argument
# the after hook will run after specified target
# :all target means that the hook will run before/after all of the Examples

describe 'before and after hooks' do
  before(:each) do
    puts 'run BEFORE each example'
  end

  after(:each) do
    puts 'run AFTER each example'
  end

  before(:all) do
    puts 'run BEFORE ALL examples '
  end

  after(:all) do
    puts 'run AFTER ALL examples'
  end

  it 'is the first Example in this spec file' do
    puts 'Running the first Example'
  end

  it 'is the second Example in this spec file' do
    puts 'Running the second example'
  end
end

