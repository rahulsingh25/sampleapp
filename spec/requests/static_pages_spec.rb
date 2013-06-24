require 'spec_helper'

describe "Static Pages" do

  # describe "Home Page" do
  #   it "should have the h1 'Sample App'" do
  #      visit '/static_pages/home'
  #      page.should have_selector('h1', :text=>'Sample App')
  #   end

  #   it "should have the title 'Home'" do
  #  		visit '/static_pages/home'
  #  		page.should have_title("Home")
  #  	end
  # end

  #   describe "Help Page" do
  #   	it "should have content 'Help'" do
  #   		visit '/static_pages/help'
  #   		page.should have_content('Help')
  #   	end
  #   	it "should have the title 'Help'" do
  #   		visit '/static_pages/help'
  #   		page.should have_title("Help")
  #   	end
  #  end

  #   describe "About Page" do
  #   	it "should have content 'About Us'" do
  #   		visit '/static_pages/about'
  #   		page.should have_content('About Us')
  #   		end
  #   	it "should have the title 'About Us'" do
  #   		visit '/static_pages/about'
  #   		page.should have_title("About Us")
  #   	end
  #   end

  #   describe "Contact Page" do
  #     let(:base_title) {"Ruby on Rails Sample App"}
  #     it "should have content 'Contact'" do
  #       visit '/static_pages/contact'
  #       page.should have_content('Contact')
  #     end

  #     it "should have title 'Contact'" do
  #       visit '/static_pages/contact'
  #       page.should have_title("#{base_title} | Contact" )
  #   end
  # end
  
  # Writing above test but not like above m going to use named routes visit '/static_pages/...'

  # describe "Home page" do

  #   it "should have the h1 'Sample App'" do
  #     visit root_path
  #     page.should have_selector('h1', text: 'Sample App')
  #   end

  #   it "should have the base title" do
  #     visit root_path
  #     page.should have_title("Ruby on Rails Sample App")
  #   end

  #   it "should not have a custom page title" do
  #     visit root_path
  #     page.should_not have_title('| Home')
  #   end
  # end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit help_path
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_title("Ruby on Rails Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit about_path
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      page.should have_title("Ruby on Rails Sample App | About Us")
    end
  end

  # describe "Contact page" do

  #   it "should have the h1 'Contact'" do
  #     visit contact_path
  #     page.should have_selector('h1', text: 'Contact')
  #   end

  #   it "should have the title 'Contact'" do
  #     visit contact_path
  #     page.should have_title("Ruby on Rails Sample App | Contact")
  #   end
  # end

# refactoring of test for home page

 # subject { page }

 #  describe "Home page" do
 #    before { visit root_path } 

 #    it { should have_selector('h1', text: 'Sample App') }
 #    it { should have_title "Ruby on Rails Sample App" }
 #    it { should_not have_title '| Home' }
 #  end

# or above testing for can now be written as using spec/support/utilities.rb as


subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1',    text: 'Sample App') }
    it { should have_title(full_title('')) }
  end

  # similarly for the contact page also

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_title(full_title('Contact')) }
  end

end
