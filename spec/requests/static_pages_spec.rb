require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the h1 'Sample App'" do
       visit '/static_pages/home'
       page.should have_selector('h1', :text=>'Sample App')
    end

    it "should have the title 'Home'" do
   		visit '/static_pages/home'
   		page.should have_title("Home")
   	end
  end

    describe "Help Page" do
    	it "should have content 'Help'" do
    		visit '/static_pages/help'
    		page.should have_content('Help')
    	end
    	it "should have the title 'Help'" do
    		visit '/static_pages/help'
    		page.should have_title("Help")
    	end
   end

    describe "About Page" do
    	it "should have content 'About Us'" do
    		visit '/static_pages/about'
    		page.should have_content('About Us')
    		end
    	it "should have the title 'About Us'" do
    		visit '/static_pages/about'
    		page.should have_title("About Us")
    	end
    end

    describe "Contact Page" do
      let(:base_title) {"Ruby on Rails Sample App"}
      it "should have content 'Contact'" do
        visit '/static_pages/contact'
        page.should have_content('Contact')
      end

      it "should have title 'Contact'" do
        visit '/static_pages/contact'
        page.should have_title("#{base_title} | Contact" )
    end
  end
  


end
