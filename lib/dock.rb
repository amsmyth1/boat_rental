class Dock
  attr_reader :name,
              :max_rental_time,
              :rental_log

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  #rent(boat, renter) boat = rented by renter

  def rent(boat, renter)
    @rental_log[boat] = renter 
  end
  #rental_log returns a hash boat: renter

end
