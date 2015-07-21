class Question < ActiveRecord::Base
  has_many :answers
  validates :description, :presence => true
  validates :name, :presence => true
end
