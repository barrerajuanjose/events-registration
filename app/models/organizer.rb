class Organizer < ActiveRecord::Base

	has_secure_password

	has_many :events

	validates :email, uniqueness: true, presence: true, confirmation: true,
				format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i,
    						message: "Enter a valid Email address!"
    					}
	validates :email_confirmation, presence: true

    validates :pass, presence: true, confirmation: true, length: { minimum: 5 }
    validates :pass_confirmation, presence: true

    validates :name, presence: true, length: { minimum: 5 }

    validates :phone, presence: true, length: { minimum: 5 }

end
