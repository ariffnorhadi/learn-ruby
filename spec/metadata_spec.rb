# RSpec - Metadata
# https://www.tutorialspoint.com/rspec/rspec_metadata.htm

# metadata generally refers to 'data about data', this means it is about our
# describe, context and it blocks

# eg.

RSpec.describe 'an Example Group with a metadata variable', :foo => 17 do
  context 'and a context with another variable', :bar => 12 do

    it 'can access the metadata variable of the outer Example Group' do |example|
      expect(example.metadata[:foo]).to eq 17
    end

    it 'can access the metadata variable in the context block' do |example|
      expect(example.metadata[:bar]).to eq 12
    end
  end
end


