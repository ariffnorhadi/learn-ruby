# Reference: https://www.tutorialspoint.com/rspec/rspec_introduction.htm

class HelloWorld
  def say_hello
    "hello world"
  end
end

describe HelloWorld do

  # context keyword is similar to describe
  # context 'when passing valid parameters, when passing bad parameters, etc'
  # context keyword is not mandatory, but it helps to add more details on the context of the test
  context "When testing the HelloWorld class" do

    # it keyword is used to define an example/test case
    it "should say 'hello world' when we call the say_hello method" do
      hw = HelloWorld.new
      message = hw.say_hello

      # expect statements are like normal english :),
      expect(message).to eql "hello world" # to keyword is used as part of expect statements
      # we can also use not_to keyword to express the opposite
      # # the eql keyword is a special RSpec keyword called a Matcher, we use Matcher to specify what
      # type of condition ware expecting (to be true/false)
    end
  end

end

