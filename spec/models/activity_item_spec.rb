require 'spec_helper'

describe YmActivity::ActivityItem do
  
  describe do
    
    let(:activity_item) {FactoryGirl.create(:activity_item)}
    
    it "should be valid" do
      activity_item.should be_valid
    end
    
  end
  
end