class Patient < ApplicationRecord
  #has_and_belongs_to_many :appointments
  has_many :appointments
  has_many :doctors, through: :appointments
end
