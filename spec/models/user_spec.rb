require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    before (:each) do
      @existingUser = User.new(name: "Test", email: "test123@test.com", password: "12345", password_confirmation: "12345")
      @existingUser.save
      @user = User.new
    end

    context "when creating a new User" do
      it "returns invalid when all fields are empty" do
        expect(@user).to_not be_valid
      end

      it "returns valid when all fields are completed accurately" do
        @user.name = "Amy"
        @user.email = "test@test.com"
        @user.password = "1234"
        @user.password_confirmation = "1234"
        expect(@user).to be_valid
      end

      it "returns invalid when all passwords do not match" do
        @user.name = "Amy"
        @user.email = "test@test.com"
        @user.password = "1234"
        @user.password_confirmation = "1236"
        expect(@user).to_not be_valid
      end

      it "returns invalid when email has already been used" do
        
        @user.name = "Amy"
        @user.email = "test123@test.com"
        @user.password = "1234"
        @user.password_confirmation = "1234"
        expect(@user).to_not be_valid
      end

      it "returns invalid when an email is not entered" do
        @user.name = "Amy"
        @user.email = ""
        @user.password = "1234"
        @user.password_confirmation = "1234"
        expect(@user).to_not be_valid
      end

      it "returns invalid when a name is not entered" do
        @user.name = ""
        @user.email = "test@test.com"
        @user.password = "1234"
        @user.password_confirmation = "1234"
        expect(@user).to_not be_valid
      end

      it "returns invalid when a password is not entered" do
        @user.name = "Amy"
        @user.email = "test@test.com"
        @user.password = ""
        @user.password_confirmation = "1234"
        expect(@user).to_not be_valid
      end

      it "returns invalid when a password is not at least 4 characters long" do
        @user.name = "Amy"
        @user.email = "test@test.com"
        @user.password = "123"
        @user.password_confirmation = "123"
        expect(@user).to_not be_valid
      end
    end
  end
end
