class Article < ApplicationRecord
  belongs_to :user, optional: true
  validates :title, :subtitle, :content, presence: true
  acts_as_taggable_on :keywords
  acts_as_votable
end
