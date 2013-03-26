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
  subject {page}
  describe "Home page" do
      before {visit root_path}
    	it {should have_content('Sample App')}
  	
      it { should have_selector('title',
          :text=> full_title(''))
        }
  end
  describe "Help page" do
    before{visit help_path}
    it {should have_selector('h1',:text=>'Help')}

    it {should have_selector('title',
              :text=>"#{basetitle} | Help")
      }
  end
  describe "About page" do
    before{ visit about_path}
    it {should have_content('About China')}
    
    it {should have_selector('title',
                  :text=>"#{basetitle} | About China")}

  end
    describe "Contact page" do
      before{ visit contact_path}
    it {should have_content('Contact')}
    
    it {should have_selector('title',
              :text=>"#{basetitle} | Contact")}
   
  end

end
