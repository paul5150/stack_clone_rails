class Answer < ActiveRecord::Base
  belongs_to :question

  validates :info, :presence => true
  validates :name, :presence => true
end
