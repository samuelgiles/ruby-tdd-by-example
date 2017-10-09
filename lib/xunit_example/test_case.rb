# frozen_string_literal: true

class TestCase
  def initialize(name)
    self.name = name
  end

  def run
    set_up
    send(name)
    tear_down
  end

  def set_up; end

  def tear_down; end

  private

  attr_accessor :name
end
