require 'spec_helper'

describe "StaticPages" do
  let(:basetitle) {"Ruby on Rails Tutorial Sample App"}
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
          :text=>"#{basetitle} | Home")
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
        :text=>"#{basetitle} | Help")

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
          :text=>"#{basetitle} | About China")
    end
  end
    describe "Contact page" do
    it "shuold have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end
    it "shuold have the title 'Contact'" do
        visit '/static_pages/contact'
        page.should have_selector('title',
          :text=>"#{basetitle} | Contact")
    end
  end

end
