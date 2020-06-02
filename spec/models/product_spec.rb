require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validations" do
    context "when saving a new Product" do
      it "returns valid when all required fields are entered" do
        product = Product.new
        product.name = "Sweater"
        product.price = 30
        product.quantity = 10
        product.category_id = 1
        expect(product).to be_valid
      end

      it "returns an error when name is blank" do
        product = Product.new
        product.name = ""
        product.price = 30
        product.quantity = 10
        product.category_id = 1
        expect(product).to_not be_valid
      end


      it "returns an error when price is blank" do
        product = Product.new
        product.name = "Sweater"
        product.price = nil
        product.quantity = 10
        product.category_id = 1
        expect(product).to_not be_valid
      end

      it "returns an error when quantity is blank" do
        product = Product.new
        product.name = "Sweater"
        product.price = 30
        product.quantity = nil
        product.category_id = 1
        expect(product).to_not be_valid
      end

      it "returns an error when category is blank" do
        product = Product.new
        product.name = "Sweater"
        product.price = 30
        product.quantity = 10
        product.category_id = nil
        expect(product).to_not be_valid
      end
    end
  end
end
