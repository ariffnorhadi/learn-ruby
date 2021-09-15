# RSpec - Tags
# https://www.tutorialspoint.com/rspec/rspec_tags.htm

# RSpec Tags provide an easy way to run specific tests in our spec files.
# By default, RSpec will run all tests in the files,
# but we may need only to run a subset of them.

# let say we have some tests that run very fast and just made a change to the app code
# and just want to run the quick tests, let's see the example below

describe 'how to run specific Examples with Tags' do

  it 'is a slow test', :slow => true do
    sleep 10
    puts 'this test is slow'
  end

  it 'is a fast test', :fast => true do
    puts 'this test is fast'
  end

end

