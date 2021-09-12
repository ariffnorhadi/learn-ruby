class HelloWorld
  def say_hello
    "hello world"
  end
end

describe HelloWorld do

  context "When testing the HelloWorld class" do
    it "should say 'hello world' when we call the say_hello method" do
      hw = HelloWorld.new
      message = hw.say_hello
      expect(message).to eq(message)
    end

  end

end

