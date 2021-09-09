# we have explored one way to pass a variable number of arguments to our method.
# it may seem handy feature to have, except few circumstances, we are never going to use that
# many variable for our method.
# if we pass several different types of variables to the method which then will be assigned to the array,
# it can be difficult for us to invoke the method to remember the proper order for those arguments
#
# ruby allow us to (partially) mitigate this problem by passing a Hash as an argument
# or one of the arguments.
#
# for example, we have a method that takes a URI to download a file and another argument
# containing a Hash of other named options (proxy, timeout, active-connections, etc . .)

def fetch_file(uri, options)
  if options.has_key?(:proxy)
    # do something
  end
end

# the main problem with this technique is that we cannot easily set default value for arguments
# read more at http://brainspec.com/blog/2012/10/08/keyword-arguments-ruby-2-0/
# since this construct is highly useful, Ruby 2 introduced keyword arguments which allows us to write

def foo(x, str: "foo", num: 131313)
  [x, str, num]
end

puts "p foo(13) and print foo(13)"
p foo(13)
print foo(13)
puts "\n\n"
puts "puts foo(13)"
puts foo(13)

# also, introducing the double splat (**) which similar to it's counterpart collects all the
# extra named keywords as a hash parameter

puts ""

def foo_2(str: "foo_2", num: 424242, **options)
  [str, num, options]
end

p foo_2
puts
p foo_2(check: true, when: "after lunch")

# Challenge ! or task
# write a method convert_temp that helps in temperature conversion
# the method will receive
# a number as an input (temperature)
# a named parameter input_scale(scale for input temperature)
# and an optional parameter output_scale(output temperature scale, defaults to Celcius)
#
# return the converted temperature

# FIXME
def convert_temp(temp, input_scale:, output_scale: 'celcius')
  case input_scale.downcase
  when 'kelvin'
    if output_scale == 'kelvin'
      return temp
    elsif output_scale == 'fahrenheit'
      return ((temp - 273.15) * (9 / 5)) + 32
    else
      return temp - 273.15
    end

  when 'fahrenheit'
    if output_scale == 'kelvin'
      return ((temp - 32) * (5 / 9)) + 273.15
    elsif output_scale == 'fahrenheit'
      return temp
    else
      return ((temp - 32) * 5 / 9)
    end

  when 'celcius'
    if output_scale == 'kelvin'
      return temp + 273.15
    elsif output_scale == 'fahrenheit'
      return (temp * (9 / 5)) + 32
    else
      return temp
    end
  end
end

# better solution
def convert_temp_2(temp, input_scale:, output_scale: 'Celsius')
  case input_scale.downcase
  when 'fahrenheit'
    return output_scale == 'kelvin' ?
             ((temp - 32) / 1.8) + 273.15 : (temp - 32) / 1.8
  when 'celsius'
    return output_scale == 'kelvin' ?
             temp + 273.15 : (temp * 1.8) + 32
  when 'kelvin'
    return output_scale == 'celsius' ?
             temp - 273.15 : (temp - 273.15) * 1.8
  end
end


