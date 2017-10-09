# frozen_string_literal: true

class TestCase
  def initialize(name)
    self.name = name
  end

  def run
    send(name)
  end

  private

  attr_accessor :name
end
