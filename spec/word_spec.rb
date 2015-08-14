require('rspec')
require('word')

describe(Word) do
  describe('#word') do
    it('returns the word, capitalized') do
      test_word = Word.new({:word => "pineapple"})
      expect(test_word.word()).to(eq("Pineapple"))
    end
  end
end
