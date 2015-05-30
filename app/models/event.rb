class Event < ActiveRecord::Base
	has_many :users
  	belongs_to :organizer
end
