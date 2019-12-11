# frozen_string_literal: true

require 'test_helper'

class EslintTest < Minitest::Test
  #def test_can_call_eslint
  #  assert Guard::Eslint.new.run_all
  #end
  def test_can_call_eslint_with_path
    assert Guard::Eslint.new(command: 'test/javascript/dummy-app/eslint', default_paths: ['test/javascript/**/*.js']).run_all
  end
  #def test_can_call_eslint_with
  #  assert Guard::Eslint.new
  #  assert Guard::Eslint.new.run_all
  #end
end
