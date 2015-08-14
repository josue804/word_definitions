require('rspec')
require('definition')

describe(Definition) do

  before() do
    Definition.clear()
  end

  describe('#definition') do
    it('returns the definition stored in a Definition object') do
      test_definition = Definition.new({:definition => "an organism capable of converting caffeine into code."})
      expect(test_definition.definition()).to(eq("An organism capable of converting caffeine into code."))
    end
  end

  describe('#save') do
    it('saves a Definition object onto the Definition class definition array') do
      test_definition = Definition.new({:definition => "a small woodland creature that jumps as high as it wants."})
      expect(test_definition.save()).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it('clears the Definition array of definitions') do
      test_definition = Definition.new({:definition => "predatory arachnid that just wants to eat bugs and can't catch a break."})
      test_definition.save()
      expect(Definition.clear()).to(eq([]))
    end
  end

  describe('.find') do
    it('finds a definition based on fed in definition id') do
      test_definition = Definition.new({:definition => "used to defeat scissors in a game."})
      test_definition.save()
      test_definition2 = Definition.new({:definition => "the best food ever made."})
      test_definition2.save()
      expect(Definition.find(test_definition2.id())).to(eq(test_definition2))
    end
  end

  describe('.all') do
    it('returns the Definition class array of all definitions') do
      test_definition = Definition.new({:definition => "the evil arch-nemesis of the enraged teen, who feels the need to strike inanimate objects"})
      test_definition.save()
      test_definition2 = Definition.new({:definition => "houses for your feet"})
      test_definition2.save()
      expect(Definition.all()).to(eq([test_definition, test_definition2]))
    end
  end

end
