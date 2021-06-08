class Station < ApplicationRecord
  validates :toure_name, presence: true, length: { maximum: 50 }
  validates :station_name, presence: true, length: { maximum: 50 }
  validates :minutes_of_foot, presence: true, length: { maximum: 10 }

    belongs_to :building
end
