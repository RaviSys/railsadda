class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :visits, class_name: "Ahoy::Visit"

  def name
    "#{self.first_name} #{self.last_name}".strip
  end

end
