require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Welcome to Imagineering Everest') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
    end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About')) }
  end

  describe "News page" do
    before { visit news_path }

    it { should have_selector('h1',    text: 'News') }
    it { should have_selector('title', text: full_title('News')) }
  end

  describe "Imagineering" do
    before { visit imagineering_path }

    it { should have_selector('h1',    text: 'Imagineering') }
    it { should have_selector('title', text: full_title('Imagineering')) }
  end
end
