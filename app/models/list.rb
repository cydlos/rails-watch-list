class List < ApplicationRecord
  has_many :movies, through: :bookmarks, dependent: :destroy
  validate :name, presence: true, uniqueness: true
end
