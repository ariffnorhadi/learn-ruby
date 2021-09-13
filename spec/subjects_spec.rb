# RSpec - Subjects
# https://www.tutorialspoint.com/rspec/rspec_subjects.htm

# eg.

class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

describe Person do
  it 'create a new person with a first and a last name' do
    person = Person.new('Ariff', 'Norhadi')
    expect(person).to have_attributes(first_name: 'Ariff')
    expect(person).to have_attributes(last_name: 'Norhadi')
  end
end
# but we can use RSpec's subject feature to reduce the amount of code in the example.

# when using RSpec's subject feature,
describe Person.new('Ariff', 'Norhadi') do
  it { is_expected.to have_attributes(first_name: 'Ariff')}
  it { is_expected.to have_attributes(last_name: 'Norhadi')}
end

