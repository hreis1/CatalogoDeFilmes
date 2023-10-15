class Movie < ApplicationRecord
  enum status: { not_released: 0, released: 1 }
  belongs_to :director
  belongs_to :genre
end
