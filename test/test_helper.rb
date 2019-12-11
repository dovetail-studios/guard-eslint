# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'simplecov'
require 'coveralls'
require 'minitest/autorun'
require 'minitest/ci'
Coveralls.wear!

root_dir = Pathname.new('..').expand_path(File.dirname(__FILE__))

Minitest::Ci.report_dir = root_dir.join('tmp', 'test-results')

SimpleCov.coverage_dir(root_dir.join('tmp', 'coverage', 'guard-eslint'))

SimpleCov.start do
  add_group('guard-eslint', 'lib/guard')
  add_filter %r{^/test/}
end

require 'guard'
require 'guard/compat/test/helper'
require 'guard/eslint'
