

class Transfer
  attr_accessor :status, :amount
  attr_reader :sender, :receiver
  
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    if @sender.valid? && @receiver.valid?
      return true
    else
      return false
    end
  end
  
  def execute_transaction
    if @sender.balance < @amount
      self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end
end
