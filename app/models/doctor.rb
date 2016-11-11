class Doctor < ApplicationRecord
  #has_and_belongs_to_many :appointments
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments
end
