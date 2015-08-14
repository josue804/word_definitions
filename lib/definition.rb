class Definition
  attr_reader(:definition, :id)
  @@definitions = []

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition).capitalize()
    @id = @@definitions.length() + 1
  end
end
