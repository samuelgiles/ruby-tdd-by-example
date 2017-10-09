# frozen_string_literal: true

class TestResult
  attr_accessor :run_count, :error_count

  def initialize
    self.run_count = 0
    self.error_count = 0
  end

  def test_started
    self.run_count += 1
  end

  def test_failed
    self.error_count += 1
  end

  def summary
    "#{run_count} run, #{error_count} failed"
  end
end
