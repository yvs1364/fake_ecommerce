class User < ApplicationRecord
  has_many :buys
  validates :pseudo, presence: true
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
