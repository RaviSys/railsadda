class Question < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_many :comments
  belongs_to :user, optional: true
  validates :title, presence: true, uniqueness: true
  acts_as_taggable_on :keywords
  acts_as_votable
end
