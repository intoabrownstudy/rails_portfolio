class ClassProject < ActiveRecord::Base
  attr_accessible :description, :name, :primary_language, :featured
  
  validates :name, :presence => true
  
    scope :is_featured, where(:featured => true)
  end
