class Space < ApplicationRecord
  belongs_to :owner, class_name: 'User'#, foreign_key: 'owner_id'
  has_many :bookings, dependent: :destroy
  has_many :mates, through: :bookings
  has_many :reviews, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def available?
    bookings.empty?
  end
end
