# frozen_string_literal: true

class Pair
  attr_accessor :from, :to

  def initialize(from, to)
    self.from = from
    self.to = to
  end

  def ==(other)
    from == other.from && to == other.to
  end

  def hash_code
    0
  end
end
