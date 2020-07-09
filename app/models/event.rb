class Event < ApplicationRecord
  belongs_to :owner, foreign_key: :owner_id, class_name: 'User'
  has_many :attendees, through: :attendees
end
