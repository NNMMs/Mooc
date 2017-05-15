require 'rails_helper'

RSpec.describe User, :type => :model do
  it "is not valid without valid attributes" do
    expect(User.new).to_not be_valid
  end

   it "is valid with valid attributes" do
    expect(User.new(name:"Default name",email:"xyz@yahoo.com",password:"11223344",password_confirmation:"11223344")).to be_valid
  end
  
end