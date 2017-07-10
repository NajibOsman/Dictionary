require('rspec')
  require('difinition')

  describe('Difinition') do
    before() do
      Difinition.clear()
    end

    describe("#word") do
          it("returns the word") do
            test_difinition = Difinition.new(:word => "najib", :type => "noun", :description => "this is a name")
            expect(test_difinition.word()).to(eq("najib"))
          end
        end

    describe("#type") do
        it("return  type of the word") do
            test_difinition = Difinition.new(:word => "najib", :type => "noun", :description => "this is a name")
            expect(test_difinition.type()).to(eq("noun"))
        end
    end

   describe("#description") do
        it("returns the description of the word") do
            test_difinition = Difinition.new(:word => "najib", :type => "noun", :description => "this is a name")
            expect(test_difinition.description()).to(eq("this is a name"))
        end
   end

   describe('.all') do
     it("returns an empty array") do
       expect(Difinition.all()).to(eq([]))
     end
   end

   describe("#save") do
     it("saves the definition to the array") do
       test_difinition = Difinition.new(:word => "najib", :type => "noun", :description => "this is a name")
       test_difinition.save()
       expect(Difinition.all()).to(eq([test_difinition]))
     end
   end

   describe(".clear") do
     it("clears the difinition array") do
       Difinition.clear()
       expect(Difinition.all()).to(eq([]))
     end
   end

   describe('#id') do
     it("returns the id of the difinition") do
       test_difinition = Difinition.new(:word => "najib", :type => "noun", :description => "this is a name")
       test_difinition.save()
       expect(test_difinition.id()).to(eq(1))
     end
   end

   describe('.find') do
     it("finds a difinition using its id") do
       test_difinition = Difinition.new(:word => "najib", :type => "noun", :description => "this is a name")
       test_difinition.save()
       expect(Difinition.find(test_difinition.id)).to(eq(test_difinition))
     end
   end

  end
