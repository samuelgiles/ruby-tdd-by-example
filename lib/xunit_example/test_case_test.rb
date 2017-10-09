# frozen_string_literal: true

class TestCaseTest < TestCase
  include Assertions

  attr_accessor :test

  def set_up
    self.test = WasRun.new('test_method')
  end

  def test_template_method
    test.run
    assert test.log == 'set_up test_method tear_down '
  end

  def test_result
    result = test.run
    assert result.summary == '1 run, 0 failed'
  end

  def test_failed_result
    test = WasRun.new('test_broken_method')
    result = test.run
    assert result.summary == '1 run, 1 failed'
  end

  def test_failed_result_formatting
    result = TestResult.new
    result.test_started
    result.test_failed
    assert result.summary == '1 run, 1 failed'
  end
end
