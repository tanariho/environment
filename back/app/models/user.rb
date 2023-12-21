class User < ApplicationRecord
  validates :provider, presence: true
  validates :uid, presence: true, uniqueness: true
  validates :name, presence: true, length: { maximum: 256 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 256 }
end
