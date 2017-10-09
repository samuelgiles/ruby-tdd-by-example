# frozen_string_literal: true

module Assertions
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def assert(condition)
      raise 'Assert failed' unless condition
    end
  end

  def assert(condition)
    self.class.assert(condition)
  end
end
