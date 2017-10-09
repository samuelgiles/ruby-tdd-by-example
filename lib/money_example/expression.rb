# frozen_string_literal: true

module Expression
  def plus(addend)
    Sum.new(self, addend)
  end
end
