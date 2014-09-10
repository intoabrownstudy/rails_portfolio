class ClassProject < ActiveRecord::Base
  attr_accessible :description, :name, :primary_language, :featured
  
  validates :description, presence: true
  validates :name, presence: true
  validates :primary_language, presence: true
  validates :featured, presence: true
  
end
