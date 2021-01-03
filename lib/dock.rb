class Dock
  attr_reader :name,
              :max_rental_time,
              :rental_log

  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @rental_log = {}
  end

  def rent(boat, renter)
    @rental_log[boat] = renter
    boat.add_renter(renter)
  end

  def charge(boat)
    charge = {}
    charge[:card_number] = boat.renter.credit_card_number
    charge[:amount] = amount_calculation(boat)
    charge
  end

  def amount_calculation(boat)
    if boat.hours_rented > @max_rental_time
      boat.price_per_hour * @max_rental_time
    else
      boat.price_per_hour * boat.hours_rented
    end
  end

  def log_hour
    @rental_log.each do |rental|
      rental[0].hours_rented += 1
    end
  end

  def return(boat)
    #clears boat.renter
    #boat.hours_rented = 0
    #revenue += charge(boat)
  end

  def revenue
    #generated after boats returned
    #adds total boat charge
  end
end
