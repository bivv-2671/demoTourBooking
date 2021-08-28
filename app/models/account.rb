class Account < ApplicationRecord
  has_many :blogreviews
  has_and_belongs_to_many :blogreviews
end
