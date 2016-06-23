class Order < ActiveRecord::Base
  belongs_to :user

  def methodToCalculatePrice
    price.calculate
  end

  def is_completed
    status == 'completed'
  end

  def order_Rejected
    status == 'rejected' ? true : false
  end

end
