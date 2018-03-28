require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'
require './lib/museum'
require 'pry'

class TestMuseum < Minitest::Test
  def test_that_museum_exists
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_instance_of Museum, dmns
  end

  def test_that_museum_has_name
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_equal dmns, dmns.name

  end

  def test_that_museum_can_add_exhibit
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_equal "Dead Sea Scrolls", 10
    assert_equal "Gems and Minerals", 0
  end

  


end
