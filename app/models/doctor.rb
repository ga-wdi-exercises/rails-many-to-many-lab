class Doctor < ApplicationRecord
  has_many :patients, through: :visits
end
