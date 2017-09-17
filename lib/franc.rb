# frozen_string_literal: true

class Franc
  def initialize(amount)
    self.amount = amount
  end

  def times(multiplier)
    Franc.new(amount * multiplier)
  end

  def ==(other)
    amount == other.amount
  end

  protected

  attr_accessor :amount
end
