require('rspec')
  require('word')
  require('difinition')

  describe(Word) do
    before() do
      Word.clear()
    end
    describe('#show') do
      it("returns the word of the user") do
        test_word = Word.new("najib")
        expect(test_word.show()).to(eq("najib"))
      end
    end

    describe(".all") do
      it("returns an empty array") do
        expect(Word.all()).to(eq([]))
      end
    end

    describe("#save") do
      it("saves a word to the array of word") do
        test_word = Word.new("najib")
        test_word.save()
        expect(Word.all()).to(eq([test_word]))
      end
    end

    describe(".clear") do
      it("clears everything in the array") do
        Word.clear()
        expect(Word.all()).to(eq([]))
      end
    end

    describe("#id") do
      it("returns the id of a specific word") do
        test_word = Word.new("najib")
        test_word.save()
        expect(test_word.id()).to(eq(1))
      end
    end

    describe(".find") do
      it("finds a specific word using its id") do
        test_word = Word.new("najib")
        test_word.save()
        expect(Word.find(test_word.id)).to(eq(test_word))
      end
    end

    describe('#difinition') do
      it("returns the list of difinition of that word") do
        test_word = Word.new("najib")
        expect(test_word.difinition()).to(eq([]))
      end
    end


    describe("#add_difinition") do
      it("adds a difinition to the word") do
         test_word = Word.new("najib")
         test_word.save()
         test_difinition = Difinition.new(:word => "najib", :type => "noun", :description => "this is a name")
         test_word.add_difinition(test_difinition)
         expect(test_word.difinition()).to(eq([test_difinition]))
      end
    end

  end
