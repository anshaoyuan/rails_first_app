require 'spec_helper'

describe "StaticPages" do
=begin  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_index_path
      response.status.should be(200)
    end
  end
=end
  describe "Home page" do
    	it "should have the h1 'Sample App'" do
  		visit '/static_pages/home'
  		page.should have_content('Sample App')
  	end
      it "shuold have the right title" do
        visit '/static_pages/home'
        page.should have_selector('title',
          :text=>"Ruby on Rails Tutorial Sample App | Home")
      end
  end
  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1',:text=>'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
        :text=>'Ruby on Rails Tutorial Sample App | Help')

    end
  end
  describe "About page" do
    it "shuold have the h1 'About china'" do
      visit '/static_pages/about'
      page.should have_content('About China')
    end
    it "shuold have the title 'About China'" do
        visit '/static_pages/about'
        page.should have_selector('title',
          :text=>'Ruby on Rails Tutorial Sample App | About China')
    end
  end

end
