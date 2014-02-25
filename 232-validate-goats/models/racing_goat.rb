class RacingGoat < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :gender, presence: true
  validates :best_100m_time, presence: true
  validates :dietary_preference, presence: true
end
