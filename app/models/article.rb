class Article < ApplicationRecord
  has_many :subscriptions
  has_many :climbers, through: :subscriptions






end
