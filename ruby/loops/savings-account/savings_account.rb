module SavingsAccount
  
  def self.interest_rate(balance)
    case
    when balance < 0
      -3.213
    when balance < 1000
      0.5
    when balance < 5000
      1.621
    else
      2.475
    end
  end
  
  def self.annual_balance_update(balance)
    balance * (1 + (interest_rate(balance) / 100).abs())
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    count = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      count += 1
    end
    count
  end
end
