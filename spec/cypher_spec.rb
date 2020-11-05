require 'cypher'

describe Cypher do
  context 'when' do
    it '#cypher will return the coded result when input is a and rotation is the one given' do
      expect(subject.cypher("a",0)).to eq "a"
      expect(subject.cypher("a",1)).to eq "b"
      expect(subject.cypher("a",4)).to eq "e"
    end
  end
end