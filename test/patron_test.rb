require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'
require './lib/museum'
require 'pry'

class TestPatron < Minitest::Test
  def test_patron_exists
   binding.pry
    bob = Patron.new("Bob")
    assert_instance_of Patron, bob
  end

  def test_patron_2_exists
    sally = Patron.new("Sally")

    assert_instance_of Patron, sally
  end

  def test_that_sally_has_interest
    sally = Patron.new("Sally")

    assert_equal "Dead Sea Scrolls", sally.add_interest
  end


  def test_that_bob_has_name
    bob = Patron.new("Bob")

    assert_equal bob, bob.name
  end

  def test_that_bob_has_interests
    bob = Patron.new("Bob")

    assert_equal interests, bob.interests
  end

  def test_to_add_bob_interests
    bob = Patron.new

    assert_equal "Dead Sea Scrolls", bob.add_interest
    assert_equal "Gems and Minerals", bob.add_interest
    assert_equal "Imax", bob.add_interest
  end
end
