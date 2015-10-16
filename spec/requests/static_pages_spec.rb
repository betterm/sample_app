require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit static_pages_help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit static_pages_help_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit static_pages_about_path
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit static_pages_about_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit static_pages_contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit static_pages_contact_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end