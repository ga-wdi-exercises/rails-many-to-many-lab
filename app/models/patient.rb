class Patient < ApplicationRecord
  has_many :doctors, through: :visits
end
