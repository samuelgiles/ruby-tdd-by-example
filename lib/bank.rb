# frozen_string_literal: true

class Bank
  attr_accessor :rates

  def initialize
    self.rates = []
  end

  def add_rate(from_currency, to_currency, rate)
    rates << [Pair.new(from_currency, to_currency), rate]
  end

  def reduce(source, to)
    source.reduce(self, to)
  end

  RATE_PAIR_INDEX = 0
  RATE_VALUE_INDEX = 1

  def rate(from, to)
    return 1 if from == to
    desired_pair = Pair.new(from, to)
    found_rate = rates.find { |rate| rate[RATE_PAIR_INDEX] == desired_pair }
    found_rate[RATE_VALUE_INDEX]
  end
end
