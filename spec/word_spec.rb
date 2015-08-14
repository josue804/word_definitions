require('rspec')
require('word')

describe(Word) do

  before() do
    Word.clear()
  end

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

  describe('.find') do
    it('finds a word based on its id number') do
      test_word = Word.new({:word => "juice"})
      test_word2 = Word.new({:word => "carrot"})
      test_word.save()
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end

  describe('.all') do
    it('returns all the words in the Word class word array') do
      test_word = Word.new({:word => "bunny"})
      test_word2 = Word.new({:word => "grassland"})
      test_word3 = Word.new({:word => "owl"})
      test_word.save()
      test_word2.save()
      test_word3.save()
      expect(Word.all()).to(eq([test_word, test_word2, test_word3]))
    end
  end


end
