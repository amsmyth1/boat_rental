require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'
require './lib/renter'
require './lib/dock'

class DockTest < MiniTest::Test

  def test_it_exists
    dock = Dock.new

    assert_instance_of Dock, dock
  end

  def test_it_has_readable_attributes
    dock = Dock.new

    assert_equal "Patrick Star", dock.name
    assert_equal "4242424242424242", dock.credit_card_number
  end
end
