class Space < ApplicationRecord
  belongs_to :owner, class_name: 'User'#, foreign_key: 'owner_id'
  has_many :bookings
  has_many :mates, through: :bookings

  def available?
    bookings.empty?
  end
end
