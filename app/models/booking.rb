class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :mate, class_name: 'User'

  after_create  :update_availabilty_space
  after_destroy :update_availabilty_space

  private

  def update_availabilty_space
    space.update!(available: !persisted?)
  end
end
