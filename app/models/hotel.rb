class Hotel < ApplicationRecord
    validates :title, presence: true, length: {minimum: 5}
    validates :addres, presence: true, length: {minimum: 10}
    validates :price, presence: true
    validates :phone, presence: true, length: {minimum: 11}

end
