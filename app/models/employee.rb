class Employee < ApplicationRecord
    validates :firstName, presence: true, length: {maximum: 20}
    validates :lastName, presence: true, length: {maximum: 20}
    validates :nickName, presence: true, length: {maximum: 20}
    validates :code, presence: true, length: { minimum: 3, maximum: 5 }
    validates :phone, presence: true, length: { minimum: 10, maximum: 10 }
end
