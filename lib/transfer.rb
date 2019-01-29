class Transfer
  # your code here
  attr_accessor :sender
  attr_reader :amount, :receiver, :transfer, :status

  def initialize(sender, receiver, status)
    
    @receiver = receiver
    @sender = sender
    @status = "pending"
    @amount = 50
  end

  def valid?
    if sender.account > @amount
      true
    elsif condition




    end
  end
end
