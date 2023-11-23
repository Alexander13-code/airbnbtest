require 'rails_helper'

RSpec.describe Apartment, type: :model do
  context 'apartment model' do
    it 'should create an apartment' do
      apartment = Apartment.new(title: "Bien centré", address: "20 rue des capucins", price: 23, description: "2 chambres")
      expect(apartment.valid?).to be true
    end
  end
end
