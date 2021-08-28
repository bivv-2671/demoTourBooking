class BlogReview < ApplicationRecord
  belongs_to :account
  has_and_belongs_to_many :accounts -> {includes :like_status}
end
