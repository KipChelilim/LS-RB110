# ** Problem **
  # explicit rules: return a single UUID when the method is invoked
  #                 no parameters to method
  #                 5 sections to string delimited with "-"
  #                 sections are 8-4-4-4-12 characters respectively
  # implicit rules: return value should be string
  #                 use hexadecimal characters 0-9, a-f
  # clarifying questions:
  #

# ** Examples **
  #

# ** Data **
  # string, array for possible hex values

# ** Algorithm **
  # initialize uuid_string variable
  # generate random character from range 0-9, a-f
  # append character to variable
  # if at current delimiter position, append "-"
  # return uui

# ** Code **
def generate_uuid
  hex_characters = ('0'..'9').to_a + ('a'..'f').to_a
  delimiter_positions = [7, 11, 15, 19]
  uuid_string = ''

  32.times do |count|
    uuid_string << hex_characters.sample
    uuid_string <<"-" if delimiter_positions.include?(count)
  end

  uuid_string
end

p generate_uuid