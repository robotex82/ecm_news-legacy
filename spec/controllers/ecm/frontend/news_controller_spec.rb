require 'spec_helper'

describe Ecm::Frontend::NewsController do
  describe "GET 'show'" do
    before(:each) do
      @news = Factory(:news)
    end
    
    it "should render the correct template" do
      get :show, :id => @news
      response.should render_template('show')
    end
    
    it "should assign a news to @news" do
      get :show, :id => @news
      assigns(:news).should eq(@news)
    end
  end
end
