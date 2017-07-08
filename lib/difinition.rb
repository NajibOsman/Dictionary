class Difinition
  attr_reader(:word, :type, :description)
  @@difinitions = []
  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
    @type = attributes.fetch(:type)
    @description = attributes.fetch(:description)
    @id = @@difinitions.length().+(1)
  end

  define_singleton_method(:all) do
    @@difinitions
  end

  define_method(:save) do
    @@difinitions.push(self)
  end

define_singleton_method(:clear) do
  @@difinitions = []
end
define_method(:id) do 
  @id
end

define_singleton_method(:find) do |id|
  found_difinition = nil
  @@difinitions.each() do |difinition|
    if difinition.id().eql?(id.to_i())
      found_difinition = difinition
    end
  end
  found_difinition
end


end
