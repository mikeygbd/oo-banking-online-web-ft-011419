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
    receiver.deposit(amount)
    sender.balance = sender.balance - @amount
    if !sender.valid? || !receiver.valid?
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
    else
    @status = "complete"

      # binding.pry
    end
    # sender.balance
  end

  def reverse_transfer
    receiver.balance = receiver.balance - @amount
    sender.deposit(amount)




  end


end
