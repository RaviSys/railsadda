class User < ApplicationRecord

  ROLES = %w[admin developer learner interested]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :visits, class_name: "Ahoy::Visit"
  has_many :comments
  has_many :articles
  has_many :work_samples
  
  ROLES.each do |role|
    define_method "#{role}?" do 
      self.role == "#{role}"
    end
  end

  def name
    "#{self.first_name} #{self.last_name}".strip
  end

end
