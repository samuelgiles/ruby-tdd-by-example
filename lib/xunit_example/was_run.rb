# frozen_string_literal: true

class WasRun < TestCase
  attr_accessor :was_run, :was_set_up

  def initialize(name)
    self.was_run = false
    super(name)
  end

  def test_method

  end

  def set_up
    self.was_set_up = 1
    self.was_run = 1
  end
end
