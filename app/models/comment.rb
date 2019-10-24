class Comment < ApplicationRecord
  belongs_to :climber
  belongs_to :climb
end
