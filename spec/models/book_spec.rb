require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'validations' do
    it { should validate_presence_of :title}
    it { should validate_presence_of :pages}
    it { should validate_presence_of :year}
  end

  describe "relationships" do
    it {should have_many :reviews}
    it {should have_many(:authors).through(:books_by_author)}
  end

  describe "instance methods" do
    before(:each) do
      @user_1 = User.create!(name: "Anony-moose")
      @user_2 = User.create!(name: "VinnyCheese")

      @author_1 = Author.create!(name: "Jim")
      @author_2 = Author.create!(name: "Bob")

      @book_1 = @author_1.books.create!(title: "The Adventure", pages: 1, year: 1985)
      @book_2 = @author_2.books.create!(title: "Smithsonian Fun", pages: 4, year: 2017)
      @book_1.authors << @author_2

      @review_1 = @book_1.reviews.create!(text: "THIS BOOK IS AWESOME!", rating: 5, user: @user_1)
      @review_2 = @book_1.reviews.create!(text: "This book didn't do it for me.", rating: 3, user: @user_2)
      @review_3 = @book_2.reviews.create!(text: "This book seemed like it was more about drones than Mars.", rating: 2, user: @user_1)
    end

    it ".author_names" do
      expect(@book_1.author_names).to eq(["Jim", "Bob"])
      expect(@book_2.author_names).to eq(["Bob"])
    end

    it ".average_rating" do
      expect(@book_1.average_rating).to eq(4.0)
      expect(@book_2.average_rating).to eq(2.0)
    end
  end
end
