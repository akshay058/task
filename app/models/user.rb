class User < ApplicationRecord
   validates :name, presence: true, length: { minimum: 3 }
   validates :email, presence: true, length: { minimum: 5 },format: { without: /\s/ },uniqueness: true
   validates :phone_no, presence: true, length: { is: 10},numericality: true
   validates :dob, presence: true
    validates :password, presence: true, length: { minimum: 2}, confirmation: true
    validates :password_confirmation, presence: true, length: { minimum: 2}

    before_save :correct
    def correct
    name.upcase!
    email.downcase!
    end   
end
