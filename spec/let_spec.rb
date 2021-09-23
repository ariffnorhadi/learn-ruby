# References
# https://relishapp.com/rspec/rspec-core/v/2-11/docs/helper-methods/let-and-let

var = 0
describe "let" do
  let(:count) { var += 1 }
  let(:name) {'ariffnorhadi'}

  it "memoizes the value" do
    expect(count).to be 1
    expect(count).to be 1
    expect(name).to eql 'ariffnorhadi'
  end

  it "is not cached across examples" do
    expect(count).to be 2
    name = 'anaknorhadi'
    expect(name).to eql 'ariffnorhadi'
  end
end
