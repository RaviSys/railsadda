class Question < ApplicationRecord
  has_many :comments
  validates :title, presence: true, uniqueness: true
  acts_as_taggable_on :keywords
end
