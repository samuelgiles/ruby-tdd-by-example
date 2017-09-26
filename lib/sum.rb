# frozen_string_literal: true

class Sum
  attr_accessor :augend, :addend

  include Expression

  def initialize(augend, addend)
    self.augend = augend
    self.addend = addend
  end

  def reduce(bank, to)
    amount = augend.reduce(bank, to).amount + addend.reduce(bank, to).amount
    Money.new(amount, to)
  end

  def times(multiplier)
    Sum.new(augend.times(multiplier), addend.times(multiplier))
  end
end
