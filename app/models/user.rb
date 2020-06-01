class User < ApplicationRecord
  has_many :clients 

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end