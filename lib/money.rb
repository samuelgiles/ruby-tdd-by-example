# frozen_string_literal: true

require 'expression'

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

  protected

  attr_writer :currency
  attr_accessor :amount
end
