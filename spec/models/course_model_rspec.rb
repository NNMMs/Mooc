require 'rails_helper'

RSpec.describe Course, :type => :model do
  it "is not valid without valid attributes" do
    expect(Course.new).to_not be_valid
  end

  it "is valid with valid attributes" do
   	expect(Course.new(title:"My Course")).to be_valid
  end

  
end
