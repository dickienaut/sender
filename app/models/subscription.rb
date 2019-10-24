class Subscription < ApplicationRecord
  belongs_to :climber
  belongs_to :article
end
