# frozen_string_literal: true

class Money
  def ==(other)
    amount == other.amount
  end

  protected

  attr_accessor :amount
end
