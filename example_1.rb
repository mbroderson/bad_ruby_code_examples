class UzytkownicyController < ApplicationController
  def index
    @uzytkownicy = Uzytkownik.where(confirmed: true)
  end
end

# Controller do przelewów i paymentów
class PrzelewysController < ApplicationController
end
