require('rspec')
require('definition')

describe(Definition) do

  describe('#definition') do
    it('returns the definition stored in a Definition object') do
      test_definition = Definition.new({:definition => "an organism capable of converting caffeine into code."})
      expect(test_definition.definition()).to(eq("An organism capable of converting caffeine into code."))
    end
  end

  describe('#save') do
    it('saves a Definition object onto the Definition class definition array') do
      test_definition = Definition.new(:definition => "a small woodland creature that jumps as high as it wants.")
      expect(test_definition.save()).to(eq([test_definition]))
    end
  end



end
