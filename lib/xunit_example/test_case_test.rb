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
end
