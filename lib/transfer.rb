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

  
end
