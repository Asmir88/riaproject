class Topic < ActiveRecord::Base
  attr_accessible :body, :name, :forum_id
  
  belongs_to :forum
  
  has_many :comments
  
  validates_presence_of :body, :name


end
