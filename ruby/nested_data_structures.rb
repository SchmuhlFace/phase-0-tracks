#Bookstore Nested Data Structure by SchmuhlFace

bookstore = {

  first_floor: {
    section_name: 'Fiction',
    genre_selection: {
      total_books: 300,
      books_purchased: 50
    },
    bestseller: [
      "Haruki Murakmi",
      "Banana Yoshimoto"
    ]
  },
  second_floor: {
    section_name: 'Poetry',
    genre_selection: {
      total_books: 1,
      books_purchased: 100
    },
    bestseller: [
      "Elizabeth Schmuhl",
      "Emily Dickinson"
    ]
  },
  third_floor: {
    section_name: 'Conceptual Art',
    genre_selection: {
      total_books: 500,
      books_purchased: 100
    },
    bestseller: [
      "Yoko Ono",
      "Sophie Calle"
    ]
  }
}

#showing I know how to print nested data (examples below) ;)

bookstore[:first_floor][:bestseller]
=> ["Haruki Murakmi", "Banana Yoshimoto"]

bookstore[:second_floor][:genre_selection].empty?
=> false

bookstore[:second_floor][:bestseller].reverse
=> ["Emily Dickinson", "Elizabeth Schmuhl"]

bookstore[:third_floor][:section_name].upcase
=> "CONCEPTUAL ART"

bookstore[:third_floor][:bestseller][0].upcase
=> "YOKO ONO"
