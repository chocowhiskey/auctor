class Plot < ApplicationRecord
  belongs_to :project
  has_many :chapters
  has_many :characters
end
