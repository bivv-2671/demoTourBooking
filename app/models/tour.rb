class Tour < ApplicationRecord
  belongs_to :category
  has_many :comments
  has_many :booktours
end
