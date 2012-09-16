require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Imagineering Everest'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Imagineering Everest')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Imagineering Everest | Home")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Imagineering Everest | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Imagineering Everest | About")
    end
  end

  describe "News page" do

    it "should have the h1 'News'" do
      visit '/static_pages/news'
      page.should have_selector('h1', :text => 'News')
    end

    it "should have the title 'News'" do
      visit '/static_pages/news'
      page.should have_selector('title', :text => "Imagineering Everest | News")
    end
  end

  describe "Imagineering" do

    it "should have the h1 'Imagineering'" do
      visit '/static_pages/imagineering'
      page.should have_selector('h1', :text => 'Imagineering')
    end

    it "should have the title 'Imagineering'" do
      visit '/static_pages/imagineering'
      page.should have_selector('title', :text => "Imagineering Everest | Imagineering")
    end
  end
end
