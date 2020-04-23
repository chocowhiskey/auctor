class Project < ApplicationRecord
  has_one :plot
  has_many :characters, dependent: :destroy
  # has_many :chapters, through: :plot
end
