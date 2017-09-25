# frozen_string_literal: true

module Expression
  def plus(addend)
    Money.new(amount + addend.amount, currency)
  end
end
