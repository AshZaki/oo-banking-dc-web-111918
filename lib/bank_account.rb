class BankAccount

  attr_accessor :bank_account, :balance, :status

  def initialized(name)
    @bank_account = name
    @balance = 1000
    @status = "open"
  end

end
