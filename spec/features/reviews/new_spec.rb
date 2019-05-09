require 'rails_helper'

RSpec.describe 'As a user', type: :feature do
  describe 'When I visit a Book review page' do
    before :each do
      @user = User.create!(name: "Billy")
      @author = Author.create!(name: "Johnny Flapjacks")
      @book = @author.books.create!(title: "The Flour Revolution", pages: 155, year: 1999)
    end

    it 'has a form for review information' do
      visit new_book_review_path(@book)

      expect(page).to have_field("Title")
      expect(page).to have_field("Username")
      expect(page).to have_field("Rating")
      expect(page).to have_field("Review")

      expect(page).to have_button("Create Review")
    end

    it 'I can create a new review' do
      visit new_book_review_path(@book)
      save_and_open_page

      fill_in "Title", with: "Wow!"
      fill_in "Username", with: "Billy"
      fill_in "Rating", with: "5"
      fill_in "Title", with: "What a book!"

      click_button "Create Review"
    end
  end
end
