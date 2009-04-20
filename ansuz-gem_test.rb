require 'test/unit'
require 'ansuz-gem'

class AnsuzGemTest < Test::Unit::TestCase
  def setup
    @ansuz = AnsuzGem.new("http://localhost:3001")
  end

  def test_initialize
    assert @ansuz
  end

  def test_get_path
    content = @ansuz.get_path("home")
    assert content
    puts content
  end

  def test_get_contents_for
    content = @ansuz.get_contents_for("home")
    assert content
  end
end
