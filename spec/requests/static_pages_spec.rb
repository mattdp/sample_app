require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
    it "should have a title in ... | Home format" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => " | Home")
    end
  end
  
  describe "Help page" do
    it "should be 'Help'ful" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have a ' | Help' title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => " | Help")
    end
  end
  
  describe "About page" do
    it "should be 'About' stuff" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    it "should have an ' | About' title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => " | About")
    end
  end
end