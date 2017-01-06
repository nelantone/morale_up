class Quote < ApplicationRecord
  validates :quote, presence: true
  validates :author, presence: true
  validates :genre, presence: true
end
