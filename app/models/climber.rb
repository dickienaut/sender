class Climber < ApplicationRecord
  has_many :comments
  has_many :climbs, through: :comments
  has_many :ticks
  has_many :climbs, through: :ticks
  has_many :subscriptions
  has_many :articles, through: :subscriptions

end
