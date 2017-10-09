# frozen_string_literal: true

module TestCaseTest
  include Assertions

  def self.test_running
    test = WasRun.new("test_method")
    assert !test.was_run
    test.run
    assert test.was_run
  end
end
