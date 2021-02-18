require 'test/unit'
require 'figlet'

class FigletTest < Test::Unit::TestCase
  def rel(*path)
    File.join(File.dirname(__FILE__), *path)
  end

  def test_hello_world
    font = Figlet::Font.new(rel('big.flf'))

    figlet = Figlet::Typesetter.new(font)

    assert_equal File.read(rel('hello_world.txt')), figlet['Hello World']
  end

  def test_no_smushing
    font = Figlet::Font.new(rel('square.flf'))

    figlet = Figlet::Typesetter.new(font, :smush => false)

    assert_equal File.read(rel('chunky_bacon.txt')), figlet['Chunky Bacon']
  end
end
