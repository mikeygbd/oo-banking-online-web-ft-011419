require 'pry'

class Transfer
  # your code here
  attr_accessor :sender
  attr_reader :amount, :receiver, :status

  def initialize(sender, receiver, amount)

    @receiver = receiver
    @sender = sender
    @status = "pending"
    @amount = amount
  end

  def valid?
   sender.balance > @amount && sender.valid? && receiver.valid?
  end

  def execute_transaction


    if !self.valid? && @status == "complete"
      @status = "rejected"
      "Transaction rejected. Please check your account balance."

    else
      receiver.deposit(amount)
      sender.balance = sender.balance - @amount
    @status = "complete"

      # binding.pry
    end
    # sender.balance
  end

  def reverse_transfer
     if @status = "complete"
    receiver.balance = receiver.balance - amount
    sender.deposit(amount)
    @status = "reversed"
    end
  end


end
