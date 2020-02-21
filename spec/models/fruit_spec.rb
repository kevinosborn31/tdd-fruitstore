require 'rails_helper'

RSpec.describe Fruit, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"

  describe 'A Pear' do
    it 'should create a valid fruit object' do
      # set up test
      @pear = Pear.create name: 'Nashi'

      # Get the data you need (Act)
      @pear_retrieved = Pear.find @pear.id

      # define/test expectations (Assert)
      expect( @pear_retrieved ).to_not be_nil
      expect( @pear_retrieved ).to eq @pear
    end

    it 'should remember its name' do
      # set up test
      @pear = Pear.create name: 'Nashi'

      # Get the data you need (Act)
      @pear_retrieved = Pear.find @pear.id

      expect( @pear_retrieved.name ).to eq 'Nashi'

      it 'should rememer its class via Single Table inheritance' do
        pear = Fruit.find @pear.id
        expect( pear.class ).to eq Pear
      end

    end
  end # Pear

end # Fruit
