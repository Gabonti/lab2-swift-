import Foundation

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

