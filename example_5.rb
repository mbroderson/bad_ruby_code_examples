class Team < ActiveRecord::Base
  # RELATIONS
  has_many :team_members
  has_many :members

  # VALIDATIONS
  validates :name, uniqueness: true, presence: true
  # is this needed?
  validates :funny_name, presence: true

  # PUBLIC METHODS

  # Dont know if it's correct. Please contact with a client
  def full_name
    "#{name} | #{funny_name}"
  end

  # PRIVATE METHODS
  private

  # TODO ADD PRIVATE METHODS HERE

end
