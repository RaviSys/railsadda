class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user, optional: true
  validates :title, :subtitle, :content, presence: true
  acts_as_taggable_on :keywords
  acts_as_votable
end
