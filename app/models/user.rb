class User < ApplicationRecord
  validates :first_name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :clients 
end