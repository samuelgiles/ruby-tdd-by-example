# frozen_string_literal: true

require 'money'

class Franc < Money
  def initialize(amount)
    self.amount = amount
  end

  def times(multiplier)
    Franc.new(amount * multiplier)
  end
end
