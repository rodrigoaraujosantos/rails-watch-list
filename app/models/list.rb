class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, presence: true, uniqueness: true
 
end
