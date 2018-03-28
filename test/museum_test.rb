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

    assert_equal "Dead Sea Scrolls", 10, dmns.exhibit
    assert_equal "Gems and Minerals", 0, dmns.exhibit
  end

  def test_that_dmns_has_revenue

    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_equal 0, dmns.revenue
  end

  def test_that_dmns_has_revenue_from_bob_and_sally
    dmns = Museum.new("Denver Museum of Nature and Science")

    assert_equal 40, dmns.admit.revenue
  end
end

#   def test_that_patrons_of_exhibit_exists
#     dmns = Museum.new("Denver Museum of Nature and Science")
#
#     assert_equal,
#   end
#
#   def test_that_exhibits_by_attendees
#     dmns = Museum.new("Denver Museum of Nature and Science")
#
#     assert_equal,
#   end
#
#   def test_that_unpopular_exhibits_be_removed
#     dmns = Museum.new("Denver Museum of Nature and Science")
#
#     assert_equal
#   end
