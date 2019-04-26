class WorkSample < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :user, optional: true
  validates :name, :description, :codebase_url, presence: true
end
