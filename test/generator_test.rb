require_relative 'test_helper'

class GeneratorTest < Minitest::Test
  def test_default_metadata_path
    subject = Generator.new('aname', 'some cases')
    # This is relative to the xruby root
    assert_equal '../x-common/exercises/aname', subject.metadata_dir
  end

  def test_initalize_with_fixture_path
    fixture_path = 'xruby/test/fixtures'
    subject = Generator.new('aname', 'some cases', fixture_path)
    assert_equal 'xruby/test/fixtures/exercises/aname', subject.metadata_dir
  end

end
