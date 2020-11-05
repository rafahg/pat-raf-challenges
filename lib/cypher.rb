class Cypher

  attr_reader :dictionary

  def initialize
    @dictionary = ("a".."z").to_a
  end
  
  def cypher(string, rotation)
    encoded_string = string.chars.map {|char| converter(char,rotation) }
     # Rotating the dictionary "r" places, using rotate method.
    #index = dictionary.index(string) # Obtaining the number of the actual index in the original dictionary.
    return encoded_string.join # Obtaining the letter in the rotated dictionary using the previous index.
  end



# HELPER METHOD


  def converter(char, rotation)
    rotated_dictionary = dictionary.rotate(rotation)
    index = dictionary.index(char)
    return rotated_dictionary[index]
  end

end

 



