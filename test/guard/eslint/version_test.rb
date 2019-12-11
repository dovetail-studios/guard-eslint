# frozen_string_literal: true

require 'test_helper'

class EslintTest < Minitest::Test
  def test_version_exists
    assert Guard::EslintVersion.to_s, 'No version found'
  end
end
