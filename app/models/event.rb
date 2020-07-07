class Event < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :attendees, through: :attendees
end
