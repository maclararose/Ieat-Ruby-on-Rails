require 'rails_helper'

RSpec.describe Restaurant do
  context 'testing total of products' do
    it 'returns total of products for a specific restaurant' do
      restaurant = Restaurant.create(name: 'restaurant test', address: 'anything...')

      product = Product.create(restaurant: restaurant, name: 'prato', value: 15)
      product1 = Product.create(restaurant: restaurant, name: 'product', value: 10)
      product1 = Product.create(restaurant: restaurant, name: 'anything', value: 20)

      expect(restaurant.total_of_products).to eq 3
    end
  end
end