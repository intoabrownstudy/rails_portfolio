class User < ActiveRecord::Base
  attr_accessible :age, :name
  
  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
    
end
