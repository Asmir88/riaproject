class Comment < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user
  attr_accessible :body
  validates_presence_of :body
end
