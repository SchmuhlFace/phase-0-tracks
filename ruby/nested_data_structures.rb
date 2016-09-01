#Bookstore Nested Data Structure

bookstore = {
  first_floor: {
    pretty_name: 'Fiction',
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
    pretty_name: 'Poetry',
    genre_selection: {
      total_books: 100
      books_purchased: 10
    },
    bestseller: [
      "Elizabeth Schmuhl",
      "Emily Dickinson"
    ]
  },
  third_floor: {
    pretty_name: 'Conceptual Art'
    genre_selection: {
      total_books: 500
      books_purchased: 100
    },
    bestseller: [
      "Yoko Ono"
      "Sophie Calle"
    ]
  }
}