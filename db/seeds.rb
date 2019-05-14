Review.destroy_all
Book.destroy_all
Author.destroy_all
User.destroy_all

@user_1 = User.create(name: "AnonyMoose")
@user_2 = User.create(name: "MILLS")
@user_3 = User.create(name: "BilhamTheConqueror")
@user_4 = User.create(name: "GREATNAME")
@user_5 = User.create(name: "MyCousinVinny")

@author_1  = Author.create(name: "R.L. Stine", image: "https://i3.bookpage.com/interviews/images/1684cdfeefffc04955521ca0f6a1a01b/large.jpg")
@author_2  = Author.create(name: "John Peel", image: "https://weloveallthat.files.wordpress.com/2013/10/john-peel-in-a-boat.jpg")
@author_3  = Author.create(name: "Stephen King", image: "https://images-na.ssl-images-amazon.com/images/I/61dWUcBJ10L._SY600_.jpg")
@author_4  = Author.create(name: "H.P. Lovecraft", image: "http://www.blackthorncommunications.com/wp-content/uploads/2012/05/HP-Lovecraft-Reanimated-3.jpg")
@author_5  = Author.create(name: "Steven Philip Jones")
@author_6  = Author.create(name: "Octavio Cariello")
@author_7  = Author.create(name: "Bret Easton Ellis", image: "https://pixel.nymag.com/imgs/fashion/daily/2019/04/15/15-Bret-Easton-Ellis.w330.h412.jpg")
@author_8  = Author.create(name: "Bram Stoker", image: "https://www.classic-monsters.com/wp-content/uploads/2014/07/Bram-Stoker_main.jpg")
@author_9  = Author.create(name: "Edgar Allan Poe", image: "https://i.ebayimg.com/images/g/TU8AAOSw5cNYFZMr/s-l640.jpg")
@author_10 = Author.create(name: "Shirley Jackson", image: "https://literaryfictions.files.wordpress.com/2011/08/shirley-jackson3-1916-1965.jpg")

@book_1  = @author_1.books.create(title: "Stay Out of the Basement", pages: 122, year: 1992, image: "https://i.pinimg.com/originals/69/f8/cc/69f8ccdb4f380d621af51ca0028f046d.jpg")
@book_2  = @author_1.books.create(title: "Bad Hare Day", pages: 117, year: 1996, image: "https://www.cheetay.pk/static/media/images/products/2018/12/BK-216229.jpg")
@book_3  = @author_1.books.create(title: "Night of the Living Dummy 2", pages: 120, year: 1995, image: "https://i.ebayimg.com/images/g/4fkAAOSwAPVZMEx4/s-l640.jpg")
@book_4  = @author_1.books.create(title: "The Werewolf of Fever Swamp", pages: 123, year: 1993, image: "https://pictures.abebooks.com/isbn/9780439796354-uk.jpg")
@book_5  = @author_2.books.create(title: "The Tale of the Zero Hero", pages: 131, year: 1997, image: "https://images-na.ssl-images-amazon.com/images/I/51GJNDRBC9L.jpg")
@book_6  = @author_2.books.create(title: "The Tale of the Shimmering Shell", pages: 128, year: 1997, image: "https://images-na.ssl-images-amazon.com/images/I/515P8BG622L.jpg")
@book_7  = @author_3.books.create(title: "Cujo", pages: 309, year: 1981, image: "https://covers.openlibrary.org/b/id/8232687-L.jpg")
@book_8  = @author_3.books.create(title: "Misery", pages: 420, year: 1987, image: "https://i.pinimg.com/originals/12/b7/96/12b796a27204a36bee07307f34c6ebb9.jpg")
@book_9  = @author_4.books.create(title: "The Tomb", pages: 28, year: 1922, image: "https://i.ebayimg.com/images/g/uegAAOSwoydWsozb/s-l1600.jpg")
@book_10 = @author_4.books.create(title: "The Alchemist", pages: 10, year: 1916, image: "https://i.ebayimg.com/images/i/263210839256-0-1/s-l1000.jpg")
@book_11 = @author_7.books.create(title: "American Psycho", pages: 399, year: 1991, image: "https://i.pinimg.com/originals/c7/04/44/c7044463742377572c62b0dde55d927f.jpg")
@book_12 = @author_8.books.create(title: "Dracula", pages: 408, year: 1897, image: "https://i.pinimg.com/originals/95/7c/7d/957c7deec0e1b5b215ba595fb7c9d811.jpg")
@book_13 = @author_9.books.create(title: "The Complete Collection of Edgar Allan Poe", pages: 1040, year: 2015, image: "https://images-na.ssl-images-amazon.com/images/I/51yljpUp%2BxL.jpg")
@book_14 = @author_10.books.create(title: "We Have Always Lived in the Castle", pages: 214, year: 1962, image: "https://wpr-public.s3.amazonaws.com/ttbook/styles/embed-portrait/s3/images/A1tY7yFy8SL.jpg?itok=pyX0hACC")
@book_15 = @author_10.books.create(title: "The Haunting of Hill House", pages: 246, year: 1959, image: "https://cheetay-prod-media.s3.amazonaws.com/production/media/images/products/2018/10/BK-213942.jpg")
@book_9.authors  << [@author_5, @author_6]
@book_10.authors << [@author_5, @author_6]

@review_1  = @book_1.reviews.create(title: "AWESOME", text: "This book rules.", rating: 5, user: @user_1)
@review_2  = @book_1.reviews.create(title: "Sucks", text: "This book drools, didn't get through it.", rating: 2, user: @user_2)
@review_3  = @book_2.reviews.create(title: "Book Arrived Damaged", text: "Couldn't even read the first page.", rating: 1, user: @user_1)
@review_4  = @book_2.reviews.create(title: "Not Great", text: "Yeah... didn't get through it.", rating: 2, user: @user_2)
@review_5  = @book_3.reviews.create(title: "Decent Read", text: "Good, if you need to kill some time.", rating: 3, user: @user_3)
@review_6  = @book_3.reviews.create(title: "Sweet Book", text: "Almost sugary.", rating: 4, user: @user_4)
@review_7  = @book_4.reviews.create(title: "OMG", text: "I'm lost for words.", rating: 5, user: @user_3)
@review_8  = @book_4.reviews.create(title: "Definitely Want My Money Back", text: "All of it!", rating: 1, user: @user_4)
@review_9  = @book_5.reviews.create(title: "What Just Happened", text: "I feel blind-sided.", rating: 2, user: @user_4)
@review_10 = @book_5.reviews.create(title: "Pass", text: "I don't want to review this book.", rating: 3, user: @user_5)
@review_11 = @book_6.reviews.create(title: "Almost 5/5", text: "But definitely 4/5.", rating: 4, user: @user_1)
@review_12 = @book_6.reviews.create(title: "I LIKED IT", text: "At least the half I read.", rating: 5, user: @user_2)
@review_13 = @book_7.reviews.create(title: "WTF", text: "Title says it all.", rating: 1, user: @user_1)
@review_14 = @book_8.reviews.create(title: "I Was Mislead", text: "My friend said to check this out.", rating: 2, user: @user_2)
@review_15 = @book_9.reviews.create(title: "I Wanted to Like It", text: "But I just didn't.", rating: 3, user: @user_3)
@review_16 = @book_10.reviews.create(title: "WOWZERS", text: "Blew my mind, seriously.", rating: 4, user: @user_4)
@review_17 = @book_11.reviews.create(title: "Holy Smokes", text: "Perfect 5/5.", rating: 5, user: @user_5)
@review_18 = @book_12.reviews.create(title: "Painful Read", text: "AAARRRGGGHHH!", rating: 1, user: @user_1)
@review_19 = @book_13.reviews.create(title: "Didn't Read This", text: "But I heard it was bad.", rating: 2, user: @user_2)
@review_20 = @book_14.reviews.create(title: "Middle of the Road", text: "So-so read.", rating: 3, user: @user_3)
