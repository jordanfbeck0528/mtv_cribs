require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'

class RenterTest < Minitest::Test

  def test_it_exists_and_has_attributes_and_name
    renter1 = Renter.new("Jessie")
    assert_equal "Jessie", renter1.name
  end

  # def test_it
  #
  # end
end
