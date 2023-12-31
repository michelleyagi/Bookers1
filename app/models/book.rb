class Book < ApplicationRecord
  def self.index
  end
  
  validates :title, presence: true
  validates :body, presence: true
end
