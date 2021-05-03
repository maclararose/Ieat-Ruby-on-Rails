require 'rails_helper'

RSpec.describe Restaurant do
  context 'testing total of products' do
    let(:restaurant) { FactoryBot.create(:restaurant) }

    before do
      product1 = FactoryBot.create(:product, restaurant: restaurant)
      product2 = FactoryBot.create(:product, restaurant: restaurant)
      product3 = FactoryBot.create(:product, restaurant: restaurant)
    end
    it 'returns total of products for a specific restaurant' do
      expect(restaurant.total_of_products).to eq 3
    end
  end
end