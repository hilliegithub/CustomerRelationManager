class Customer < ApplicationRecord
    validates :fullname, :phone_number, presence: true
    validates :fullname, length: {minimum: 3,
    too_short: "%{count} characters is the minimum allowed"}
    validates :email, uniqueness: true
    has_one_attached :image
end
