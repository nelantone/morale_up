require 'rails_helper'

RSpec.describe Quote, type: :model do

  it "should be valid" do
    @quote = FactoryGirl.create(:quote)
    expect(@quote).to be_valid
  end

  it "should not validate quotes without an Quote" do
    @quote = FactoryGirl.build(:quote, quote: nil)
    expect(@quote).to_not be_valid
  end

  it "should not validate quotes without an Quote" do
    @quote = FactoryGirl.build(:quote, author: nil)
    expect(@quote).to_not be_valid
  end

  it "should not validate quotes without an Author" do
    @quote = FactoryGirl.build(:quote, genre: nil)
    expect(@quote).to_not be_valid
  end

end
