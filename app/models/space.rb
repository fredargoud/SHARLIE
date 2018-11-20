class Space < ApplicationRecord
  belongs_to :owner, class_name: 'User'#, foreign_key: 'owner_id'
  has_many :mates, through: :bookings

  validates :available, presence: true
end
