class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :mate, class_name: 'User'
end
