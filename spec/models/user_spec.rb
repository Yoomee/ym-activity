require 'spec_helper'

describe User do
  
  describe 'record_activity!' do
    
    let(:user) {FactoryGirl.create(:user)}
    let(:resource) {FactoryGirl.create(:resource)}
    
    it "creates an activity_record" do
      user.record_activity!(resource)
      user.activity_items.where(:resource_type => resource.class.to_s, :resource_id => resource.id).should exist
    end
    
  end
  
end