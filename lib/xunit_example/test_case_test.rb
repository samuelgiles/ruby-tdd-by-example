# frozen_string_literal: true

class TestCaseTest < TestCase
  include Assertions

  attr_accessor :test

  def set_up
    self.test = WasRun.new('test_method')
  end

  def test_running
    test.run
    assert test.was_run
  end

  def test_set_up
    test.run
    assert test.was_set_up
  end
end
