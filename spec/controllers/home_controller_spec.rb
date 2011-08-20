require 'spec_helper'

describe HomeController do
  render_views
  before(:each) do
    News.all.map(&:destroy)
    NewsCategory.all.map(&:destroy)
  end
  
  describe 'with enabled news categories' do
    describe "with categorized news" do
      before(:each) do
        @news = []
        @news << Factory(:news_with_category)
        @news << Factory(:news_with_other_category)
      end    
      
      describe "GET 'index'" do
        it "should show news for all categories" do
          get :index
          @news.each do |news|
            response.body.should include(news.title)
          end
        end
      end # describe "GET 'index'"
      
      describe "GET 'categorized'" do
        it "should show news for the given category" do
          get :categorized
          @news.each do |news|
            response.body.should include(news.title)
          end
        end
      end # describe "GET 'categorized'"
    end # describe "with categorized news"
  end # describe 'with enabled news categories
end # describe HomeController
