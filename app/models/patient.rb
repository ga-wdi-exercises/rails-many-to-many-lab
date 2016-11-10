class Patient < ApplicationRecord
  has_many :doctors, through: :appointments, dependent: :destroy
  has_many :appointments
end
