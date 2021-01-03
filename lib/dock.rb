class Dock
  attr_reader :name,
              :max_rental_time

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
  end 

  #rent(boat, renter) boat = rented by renter
  #rental_log returns a hash boat: renter

end
