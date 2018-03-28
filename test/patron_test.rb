require 'minitest/autorun'
require 'minitest/pride'
require './lib/patron'
require 'pry'

class TestPatron < Minitest::Test
  def test_patron_exists
    bob = Patron.new("Bob")

    assert_instance_of Patron, bob
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
  end


end
