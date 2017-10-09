# frozen_string_literal: true

class WasRun < TestCase
  attr_accessor :was_run, :was_set_up, :log

  def initialize(name)
    self.was_run = false
    self.log = 'set_up '
    super(name)
  end

  def test_method
    self.was_run = 1
    self.log = log + 'test_method '
  end

  def tear_down
    self.log = log + 'tear_down '
  end
end
