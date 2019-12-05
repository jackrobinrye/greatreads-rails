jack = User.create(name: "Jack", email: "jack@gmail.com", password: "password")
sarah = User.create(name: "Sarah", email: "sarah@gmail.com", password: "password")

tolkein = Author.create(name: "J R R Tolkein", birthdate: Time.new(1892, 1, 3))
brown = Author.create(name: "Dan Brown", birthdate: Time.new(1964, 6, 22))
rowling = Author.create(name: "JK Rowling", Time.new(1965, 7, 31))

fantasy = Genre.create(name: "Fantasy")
mystery = Genre.create(name: "Mystery")
nonfiction = Genre.create(name: "Nonfiction")
romance = Genre.create(name: "Romance")
sci_fi = Genre.create(name: "Science Fiction")
thriller = Genre.create(name: "Thriller")
young_adult = Genre.create(name: "Young Adult Fiction")


# t.string  "title"
# t.string  "author"
# t.string  "genre"
# t.boolean "read",    default: false
# t.integer "user_id"
Book.create(title: "Fellowship of the Ring", author_id: tolkein.id, genre_id: "fantasy")
Book.create(title: "Twin Towers", author_id: tolkein.id, genre_id: "fantasy")
Book.create(title: "Return of the King", author_id: tolkein.id, genre_id: "fantasy")

Book.create(title: "Harry Potter and the Sorcerer's Stone", author_id: "JK Rowling", genre_id: "fantasy")
Book.create(title: "Uglies", author_id: "Scott Westerfeld", genre_id: "scifi")

