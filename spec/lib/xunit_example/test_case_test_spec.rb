# frozen_string_literal: true

require 'spec_helper'
require 'xunit_example/assertions'
require 'xunit_example/test_case'
require 'xunit_example/was_run'
require 'xunit_example/test_case_test'

describe TestCaseTest do
  describe '.test_running' do
    specify do
      expect { described_class.test_running }.not_to raise_error Exception
    end
  end
end
