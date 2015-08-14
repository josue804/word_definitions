require('rspec')
require('definition')

describe(Definition) do

  describe('#definition') do
    it('returns the definition stored in a Definition object') do
      test_definition = Definition.new({:definition => "an organism capable of converting caffeine into code."})
      expect(test_definition.definition()).to(eq("An organism capable of converting caffeine into code."))
    end
  end
end
