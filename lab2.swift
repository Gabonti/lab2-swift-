import Foundation

class BankAccount {
    var accountNumber: String
    var accountOwner: String
    var balance: Double

    init(accountNumber: String, accountOwner: String, initialBalance: Double) {
        self.accountNumber = accountNumber
        self.accountOwner = accountOwner
        self.balance = initialBalance
    }

    func deposit(amount: Double) {
        if amount > 0 {
            balance += amount
            print("Deposit of $\(amount) successful. New balance: $\(balance)")
        } else {
            print("Invalid deposit amount. Please enter a positive value.")
        }
    }

    func withdraw(amount: Double) {
        if amount > 0 {
            if amount <= balance {
                balance -= amount
                print("Withdrawal of $\(amount) successful. New balance: $\(balance)")
            } else {
                print("Insufficient funds. Withdrawal not allowed.")
            }
        } else {
            print("Invalid withdrawal amount. Please enter a positive value.")
        }
    }

    func getBalance() -> Double {
        return balance
    }

    func displayInfo() {
        print("Account Number: \(accountNumber)")
        print("Account Owner: \(accountOwner)")
        print("Current Balance: $\(balance)")
    }
}

// Example usage:
let account1 = BankAccount(accountNumber: "123456789", accountOwner: "John Doe", initialBalance: 1000.0)
account1.displayInfo()

account1.deposit(amount: 500.0)
account1.withdraw(amount: 200.0)
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


