class Climb < ApplicationRecord
  has_many :comments
  has_many :climbers, through: :comments
  has_many :ticks
  has_many :climbers, through: :ticks








end
