class PriceCalculation

  def initialize(params, resource)
    @w = params[:price]
    @k = params[:additionall_info]
    @lol = resource
  end

  def calculate_price
    @lol.update_attributes(price:  (@w + (@w * @k)))
  end

end
