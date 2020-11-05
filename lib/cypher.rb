class Cypher

  attr_reader :dictionary

  def initialize
    @dictionary = ("a".."z").to_a
  end
  
  def cypher(string, rotation)
    encoded_string = string.chars.map {|char| converter(char,rotation) } # it is gonna convert a string in an array and then with the map method the array it will change using the helper method converter. Now the content of the array is the coded message.
    encoded_string.join # join method gives us the string we are looking for.
  end

  # HELPER METHOD

  def converter(char, rotation)
    rotated_dictionary = dictionary.rotate(rotation) # Rotating the dictionary "n" places, using rotate method with the integer "rotation" as an argument.
    index = dictionary.index(char) #index = dictionary.index(string) # Obtaining the number of the actual index in the original dictionary.
    rotated_dictionary[index]
  end

end

 



