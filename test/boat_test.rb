require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/renter'

class BoatTest < MiniTest::Test

  def test_it_exists
    boat = Boat.new(:kayak, 20)

    assert_instance_of Boat, boat
  end

  def test_it_has_readable_attributes
    boat = Boat.new(:kayak, 20)

    assert_equal :kayak, boat.type
    assert_equal 20, boat.price_per_hour
  end

  def test_hours_rented_can_be_increased
    boat = Boat.new(:kayak, 20)

    assert_equal 0, boat.hours_rented

    boat.add_hour

    assert_equal 1, boat.hours_rented

    boat.add_hour
    boat.add_hour

    assert_equal 3, boat.hours_rented
  end

  def test_renter
    boat = Boat.new(:kayak, 20)
    patrick = Renter.new("Patrick Star", "4242424242424242")
    boat.add_renter(patrick)

    assert_equal patrick, boat.renter

  end
end
