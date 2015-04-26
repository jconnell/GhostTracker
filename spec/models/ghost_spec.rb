# spec/models/ghost_spec.rb
require 'spec_helper'

describe Ghost do
  it "has a valid factory" do
    FactoryGirl.create(:ghost).should be_valid
  end
  it "has a unique card_id" do
    FactoryGirl.build(:ghost, card_id: 404040).should_not be_valid
  end
end
