# frozen_string_literal: true

class Money
  def ==(other)
    amount == other.amount && self.class == other.class
  end

  protected

  attr_accessor :amount
end
