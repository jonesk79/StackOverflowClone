class Question < ActiveRecord::Base
  belongs_to :users

  validates_presence_of :question, :presence => true
  validates_presence_of :user_id, :presence => true
end
