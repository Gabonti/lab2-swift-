import Foundation


//Exercise 1
class BankAccount:
    def __init__(self, accountNumber, accountOwner, initialBalance):
        self.accountNumber = accountNumber
        self.accountOwner = accountOwner
        self.balance = initialBalance

    def deposit(self, amount):
        if amount > 0:
            self.balance += amount
            print(f"Deposit of ${amount} successful. New balance: ${self.balance}")
        else:
            print("Invalid deposit amount. Please enter a positive value.")

    def withdraw(self, amount):
        if amount > 0:
            if amount <= self.balance:
                self.balance -= amount
                print(f"Withdrawal of ${amount} successful. New balance: ${self.balance}")
            else:
                print("Insufficient funds. Withdrawal not allowed.")
        else:
            print("Invalid withdrawal amount. Please enter a positive value.")

    def getBalance(self):
        return self.balance

    def displayInfo(self):
        print(f"Account Number: {self.accountNumber}")
        print(f"Account Owner: {self.accountOwner}")
        print(f"Current Balance: ${self.balance}")


# Example usage:
account1 = BankAccount("123456789", "John Doe", 1000.0)
account1.displayInfo()

account1.deposit(500.0)
account1.withdraw(200.0)
account1.displayInfo()
            

//Exercise 2
class Book {
    var title: String
    var author: String
    var year: Int
    var pageCount: Int

    init(title: String, author: String, year: Int, pageCount: Int) {
        self.title = title
        self.author = author
        self.year = year
        self.pageCount = pageCount
    }

    func displayInfo() {
        print("Title: \(title)")
        print("Author: \(author)")
        print("Year: \(year)")
        print("Page Count: \(pageCount)")
        print()
    }
}

class Library {
    var books: [Book]

    init() {
        self.books = []
    }

    func addBook(book: Book) {
        books.append(book)
        print("Book '\(book.title)' added to the library.")
    }

    func removeBook(title: String) {
        if let index = books.firstIndex(where: { $0.title == title }) {
            let removedBook = books.remove(at: index)
            print("Book '\(removedBook.title)' removed from the library.")
        } else {
            print("Book with title '\(title)' not found in the library.")
        }
    }

    func displayAllBooks() {
        print("Books in the library:")
        for book in books {
            book.displayInfo()
        }
    }
}

// Example Usage:
let book1 = Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", year: 1925, pageCount: 180)
let book2 = Book(title: "To Kill a Mockingbird", author: "Harper Lee", year: 1960, pageCount: 281)

let library = Library()
library.addBook(book: book1)
library.addBook(book: book2)

library.displayAllBooks()

library.removeBook(title: "The Great Gatsby")

library.displayAllBooks()


