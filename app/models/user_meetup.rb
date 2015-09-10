class UserMeetup < ActiveRecord::Base
  belongs_to :meetup
  belongs_to :user

  validates :meetup_id, numericality: true
  validates :user_id, numericality: true
end
