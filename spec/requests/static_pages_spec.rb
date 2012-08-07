require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_content('Sample App')
    end
    it "should have a title in ... | Home format" do
      visit root_path
      page.should have_selector('title', :text => " | Home")
    end
  end
  
  describe "Help page" do
    it "should be 'Help'ful" do
      visit help_path
      page.should have_content('Help')
    end
    it "should have a ' | Help' title" do
      visit help_path
      page.should have_selector('title', :text => " | Help")
    end
  end
  
  describe "About page" do
    it "should be 'About' stuff" do
      visit about_path
      page.should have_content('About')
    end
    it "should have an ' | About' title" do
      visit about_path
      page.should have_selector('title', :text => " | About")
    end
  end
  
  describe "Contact page" do
    it "should have 'contact' in the h1" do
      visit contact_path
      page.should have_selector('h1', text: 'contact')
    end
    
    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title', text: 'Contact')
    end
  end  
end