require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before {visit root_path}
    
    it { should have_content('Sample App') }
    it { should have_selector('title', :text => " | Home") }
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