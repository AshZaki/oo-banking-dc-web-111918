class BankAccount

  attr_accessor :name, :balance, :status

  def initialized(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

end
