require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'
require './lib/building'

class BuildingTest < Minitest::Test

  def test_it_exists_and_has_attributes_and_name
    building = Building.new
    assert_instance_of Building, building
  end

  def test_it_can_hold_units
    building = Building.new

    assert_equal [], building.units

    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    building.add_unit(unit1)
    building.add_unit(unit2)

    assert_equal [unit1, unit2], building.units
  end

  def test_it_can_hold_renters
    building = Building.new
    assert_equal [], building.renters
  end

  def test_it_can_add_renter
  building = Building.new
  unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  renter1 = Renter.new("Aurora")

  unit1.add_renter(renter1)
  require "pry"; binding.pry
  

  assert_equal ["Aurora"], building.renters

  end
end
