# frozen_string_literal: true

class Money
  def initialize(amount, currency)
    self.amount = amount
    self.currency = currency
  end

  def ==(other)
    amount == other.amount && self.class == other.class
  end

  def self.dollar(amount)
    ::Dollar.new(amount, 'USD')
  end

  def self.franc(amount)
    ::Franc.new(amount, 'CHF')
  end

  attr_reader :currency

  protected

  attr_writer :currency
  attr_accessor :amount
end
