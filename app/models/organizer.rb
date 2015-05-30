class Organizer < ActiveRecord::Base

	has_many :events

	validates :email, uniqueness: true, presence: true, confirmation: true, email: true
	validates :email_confirmation, presence: true

    validates :pass, presence: true, confirmation: true, length: { minimum: 5 }
    validates :pass_confirmation, presence: true

    validates :name, presence: true, length: { minimum: 5 }

    validates :phone, presence: true, length: { minimum: 5 }

end
