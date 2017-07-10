class Word
  @@words = []

  define_method(:initialize) do |word|
   @word = word
   @id = @@words.length().+(1)
   @difinition = []
  end

  define_method(:show) do
   @word
  end

  define_singleton_method(:all) do
   @@words
  end

  define_method(:save) do
   @@words.push(self)
  end

  define_singleton_method(:clear) do
   @@words = []
  end


  define_method(:id) do
  @id
  end
  #class method for finding the id of specific word
  define_singleton_method(:find) do |id|
   found_word = nil
   @@words.each() do |word|
     if word.id().eql?(id.to_i())
       found_word = word
     end
    end
    found_word
   end

   #method for word difinition
   define_method(:difinition) do
    @difinition
   end

  #method for add a new difinition to word
  define_method(:add_difinition) do |difinition|
   @difinition.push(difinition)
  end
end
