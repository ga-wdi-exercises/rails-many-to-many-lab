class Doctor < ApplicationRecord
  has_many :patients, through: :appointments, dependent: :destroy
  has_many :appointments
end
