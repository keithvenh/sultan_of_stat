class Player < ApplicationRecord
  has_many :batting_records
  has_many :pitching_records
  has_many :fielding_records
end
