class BankAccount
  def initialize
    @amount = 5000
  end

  def status
    "Your bank account has a total of #{amount} dollars"
  end

  private 

  def amount
    @amount / 100
  end
end

bank = BankAccount.new
p bank.status # #{amount}하면 50, #{@amount}하면 5000
