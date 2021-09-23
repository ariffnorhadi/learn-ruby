# References
# https://relishapp.com/rspec/rspec-core/v/2-11/docs/helper-methods/let-and-let

var = 0
describe "let" do
  let(:count) { var += 1 }
  let(:name) { 'ariffnorhadi' }

  it "memoizes the value" do
    expect(count).to be 1
    expect(count).to be 1
    expect(name).to eql 'ariffnorhadi'
  end

  it "is not cached across examples" do
    expect(count).to be 2
    name = 'anaknorhadi'
    expect(name).to eql 'anaknorhadi'
  end
end

# References
# https://mixandgo.com/learn/let-vs-instance-variables-in-rspec

describe Time do
  let(:current_time) { Time.now }
  let!(:current_time_let!) { Time.now }

  before do
    puts Time.now
  end

  it 'gets the same time over and over again' do
    puts "current_time => #{current_time}"
    sleep(2)
    puts "current_time_let! => #{current_time_let!}"
  end

  it 'gets the time again' do
    puts current_time
  end

  it 'not get the same value after some time' do
    sleep(3)
    puts "current time => #{current_time}"
    puts "current time let! => #{current_time_let!}"
    expect(current_time_let!).to_not eq(current_time)
  end
end
