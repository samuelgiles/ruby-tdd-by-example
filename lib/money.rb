# frozen_string_literal: true

class Money
  def initialize(amount, currency)
    self.amount = amount
    self.currency = currency
  end

  include Expression

  def ==(other)
    amount == other.amount && currency == other.currency
  end

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end

  def self.dollar(amount)
    new(amount, 'USD')
  end

  def self.franc(amount)
    new(amount, 'CHF')
  end

  attr_reader :currency
  attr_reader :amount

  protected

  attr_writer :currency
  attr_writer :amount
end
