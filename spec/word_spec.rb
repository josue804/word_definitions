require('rspec')
require('word')

describe(Word) do
  describe('#word') do
    it('returns the word, capitalized') do
      test_word = Word.new({:word => "pineapple"})
      expect(test_word.word()).to(eq("Pineapple"))
    end

    it('returns truncated words uncapitalized') do
      test_word = Word.new({:word => "'til"})
      expect(test_word.word()).to(eq("'til"))
    end
  end

  describe('#save') do
    it('saves a word onto the Word class array of words') do
      test_word = Word.new({:word => "purple"})
      expect(test_word.save()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('clears the Word class array of words') do
      test_word = Word.new({:word => "capybara"})
      test_word.save()
      expect(Word.clear()).to(eq([]))
    end
  end


end
