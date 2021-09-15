# RSpec - Filtering
# https://www.tutorialspoint.com/rspec/rspec_filtering.htm
# RSpec filtering is based on RSpec Metadata
# imagine we have a spec file and it contains two type of tests like
# positive functional tests and negative (error) tests

RSpec.describe 'an Example Group with positive and negative Examples' do
  context 'when testing Ruby\'s build-in math library' do

    it 'can do normal numeric operations', positive:true do
      expect(1+1).to eq 2
    end

    it 'generate an error when expected', negative:true do
      expect {1/0}.to raise_error(ZeroDivisionError)
    end

  end

end




