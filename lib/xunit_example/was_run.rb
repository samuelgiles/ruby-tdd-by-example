# frozen_string_literal: true

class WasRun < TestCase
  attr_accessor :was_run

  def initialize(name)
    self.was_run = false
    super(name)
  end

  def test_method
    self.was_run = 1
  end
end
