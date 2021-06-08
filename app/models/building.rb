class Building < ApplicationRecord
  validates :name, presence: true, length: { maximum: 100 }
  validates :rent, numericality: { only_integer: true }
  validates :address, presence: true, length: { maximum: 100 }
  validates :age_of_building, numericality: { only_integer: true }

  has_many :stations, dependent: :destroy
  accepts_nested_attributes_for :stations
  end
