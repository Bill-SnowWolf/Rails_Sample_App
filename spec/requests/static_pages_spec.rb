require 'spec_helper'

describe "Home page" do
  describe "GET /static_pages/home" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      page.should have_content('Sample App')
    end
	it "should have the base title" do
		visit root_path
		page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App")
	end    
	it "should not have the custom page title" do
		visit root_path
		page.should_not have_selector('title', :text => "| Home")
	end
  end
end

describe "Help page" do
	describe "GET /static_pages/help" do
		it "should have the content 'Help'" do
			visit help_path
			page.should have_content('Help')
		end
		it "should have the title 'Help" do
			visit help_path
			page.should have_selector('title', :text => "| Help")
		end
	end
end

describe "About page" do
	describe "GET /static_pages/about" do
		it "should have the content 'About Us'" do
			visit about_path
			page.should have_content('About Us')
		end
		it "should have the title 'About'" do
			visit about_path
			page.should have_selector('title', :text => "| About")
		end
	end
end

describe "Contact page" do 

    it "should have the h1 'Contact'" do 
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end 

    it "should have the title 'Contact'" do 
      visit contact_path
      page.should have_selector('title',
                    text: "Ruby on Rails Tutorial Sample App | Contact")
    end 
end 

