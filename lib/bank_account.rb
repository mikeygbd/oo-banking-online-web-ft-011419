class BankAccount
  attr_accessor :balance, :status
  attr_reader :account, :name, :broke

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @account = account
    @balance = balance
    @status = status
  end

  def deposit(num)
    @balance = @balance + num
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if @status == "open" && @balance > 0
      true
    else
      false
    end
  end

  def close_account

    @status = "closed"


  end




end
