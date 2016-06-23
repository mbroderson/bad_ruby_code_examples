class Package < ActiveRecord::Base

  def connect
    self.transaction_code = Digest::MD5.hexdigest("#{id}|#{DateTime.now}")
  end

  def calculate
    DateTime.now + ((planned_end - created_at) / 1.day).round.days
  end

  def transfer(id)
    place = Place.find_by(id: id)
    if place.nil?
      return 'Place does not exist'
    else
      update_attributes(transfered_to: id)
    end
  end

end
