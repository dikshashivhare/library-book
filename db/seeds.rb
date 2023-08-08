# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
# Library test data
library = Library.create(name: 'Main Library')

#  User test data
user1 = User.create(username: 'john_doe', email: 'john@example.com')
user2 = User.create(username: 'jane_smith', email: 'jane@example.com')

# Book test data
book1 = Book.create(title: 'Book Title 1', author: 'Author 1', library: library, status: 'available')
book2 = Book.create(title: 'Book Title 2', author: 'Author 2', library: library, status: 'checked_out', checked_out_by: user1, due_date: Date.today + 7)
book3 = Book.create(title: 'Book Title 3', author: 'Author 3', library: library, status: 'available')
