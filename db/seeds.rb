#users
jack = User.create(name: "Jack", email: "jack@gmail.com", password: "password")
sarah = User.create(name: "Sarah", email: "sarah@gmail.com", password: "password")

#authors
tolkein = Author.create(
    name: "J R R Tolkein", 
    birthdate: Time.new(1892, 1, 3),
    bio: "John Ronald Reuel Tolkien was an English writer, poet, philologist, and academic, who is best known as the author of the classic high fantasy works The Hobbit, The Lord of the Rings, and The Silmarillion."
    )
brown = Author.create(
    name: "Dan Brown", 
    birthdate: Time.new(1964, 6, 22),
    bio: "The son of a mathematics teacher and a church organist, Brown was raised on a prep school campus where he developed a fascination with the paradoxical interplay between science and religion. These themes eventually formed the backdrop for his books. He is a graduate of Amherst College and Phillips Exeter Academy, where he later returned to teach English before focusing his attention full time to writing. He lives in New England with his wife."
    )
rowling = Author.create(
    name: "JK Rowling", 
    birthdate: Time.new(1965, 7, 31),
    bio: "Joanne Rowling, better known by her pen name J. K. Rowling, is a British author, film producer, television producer, screenwriter, and philanthropist. She is best known for writing the Harry Potter fantasy series, which has won multiple awards and sold more than 500 million copies, becoming the best-selling book series in history. The books are the basis of a popular film series, over which Rowling had overall approval on the scripts and was a producer on the final films. She also writes crime fiction under the name Robert Galbraith."
    )

#genres
fantasy = Genre.create(name: "Fantasy")
mystery = Genre.create(name: "Mystery")
nonfiction = Genre.create(name: "Nonfiction")
romance = Genre.create(name: "Romance")
scifi = Genre.create(name: "Science Fiction")
thriller = Genre.create(name: "Thriller")
young_adult = Genre.create(name: "Young Adult Fiction")

#books
lotr1 = Book.create(title: "Fellowship of the Ring", author_id: tolkein.id, genre_id: fantasy.id)
lotr2 = Book.create(title: "Twin Towers", author_id: tolkein.id, genre_id: fantasy.id)
lotr3 = Book.create(title: "Return of the King", author_id: tolkein.id, genre_id: fantasy.id)
hp1 = Book.create(title: "Harry Potter and the Sorcerer's Stone", author_id: rowling.id, genre_id: fantasy.id)
divinci_code = Book.create(title: "The Di Vinci Code", author_id: brown.id, genre_id: mystery.id)


#jack's book_records
BookRecord.create(user_id: jack.id, book_id: lotr1.id, read: true)
BookRecord.create(user_id: jack.id, book_id: lotr2.id, read: false)
BookRecord.create(user_id: jack.id, book_id: lotr3.id, read: false)
BookRecord.create(user_id: jack.id, book_id: hp1.id, read: true)
BookRecord.create(user_id: jack.id, book_id: divinci_code.id, read: true)

#sarah's book_records
BookRecord.create(user_id: sarah.id, book_id: hp1.id, read: true)
BookRecord.create(user_id: sarah.id, book_id: lotr1.id, read: false)
BookRecord.create(user_id: sarah.id, book_id: lotr2.id, read: false)
BookRecord.create(user_id: sarah.id, book_id: lotr3.id, read: false)
