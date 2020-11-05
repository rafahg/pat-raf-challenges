class Cypher

  attr_reader :dictionary

  def initialize
    @dictionary = ("a".."z").to_a
  end
  
  def cypher(string, rotation)
    rotated_dictionary = dictionary.rotate(rotation) # Rotating the dictionary "r" places, using rotate method.
    index = dictionary.index(string) # Obtaining the number of the actual index in the original dictionary.
    return rotated_dictionary[index] # Obtaining the letter in the rotated dictionary using the previous index.
  end

end

 



