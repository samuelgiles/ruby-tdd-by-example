# frozen_string_literal: true

class TestCaseTest < TestCase
  include Assertions

  attr_accessor :test

  def set_up
    self.test = WasRun.new('test_method')
  end

  def test_template_method
    test.run
    assert 'set_up test_method tear_down ' == test.log
  end

  def test_result
    result = test.run
    assert '1 run, 0 failed' == result.summary
  end

  def test_failed_result
    test = WasRun.new('test_broken_method')
    result = test.run
    assert '1 run, 1 failed' == result.summary
  end
end
