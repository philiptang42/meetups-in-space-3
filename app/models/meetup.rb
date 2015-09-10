class Meetup < ActiveRecord::Base
  has_many :user_meetups
  has_many :users,
    through: :user_meetups

  validates :title, presence: true, null: false
  validates :description, presence: true, null: false
  validates :location, presence: true, null: false
end
