# frozen_string_literal: true

module Assertions
  class AssertionFailedError < StandardError; end

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def assert(condition)
      raise AssertionFailedError, 'Assert failed' unless condition
    end
  end

  def assert(condition)
    self.class.assert(condition)
  end
end
