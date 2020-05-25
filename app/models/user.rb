class User < ApplicationRecord
  has_many :posts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :first_name, :last_name

  def full_name
    first_name.upcase + " " + last_name.upcase
  end

end
