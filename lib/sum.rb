# frozen_string_literal: true

class Sum
  attr_accessor :augend, :addend

  include Expression

  def initialize(augend, addend)
    self.augend = augend
    self.addend = addend
  end

  def reduce(to)
    Money.new(augend.amount + addend.amount, to)
  end
end
