# frozen_string_literal: true

class TestCase
  def initialize(name)
    self.name = name
  end

  def run
    set_up
    send(name)
  end

  def set_up
  end

  private

  attr_accessor :name
end
