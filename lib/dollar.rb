# frozen_string_literal: true

class Dollar
  def initialize(amount)
    self.amount = amount
  end

  def times(multiplier)
    Dollar.new(amount * multiplier)
  end

  def ==(other)
    amount == other.amount
  end

  protected

  attr_accessor :amount
end
