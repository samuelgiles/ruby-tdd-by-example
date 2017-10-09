# frozen_string_literal: true

class TestCase
  def initialize(name)
    self.name = name
  end

  def run
    result = TestResult.new
    result.test_started
    set_up
    begin
      send(name)
      tear_down
    rescue Exception => exception
      result.test_failed
    end
    result
  end

  def set_up; end

  def tear_down; end

  private

  attr_accessor :name
end
