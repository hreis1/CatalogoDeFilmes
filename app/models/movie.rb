class Movie < ApplicationRecord
  enum status: { not_released: 0, released: 1 }
  belongs_to :director
  belongs_to :genre
  validate :check_release_year

  def check_release_year
    if release_year.present? && release_year > Date.today
      self.status = 0
    else
      self.status = 1
    end
  end
end
