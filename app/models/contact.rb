class Contact < ActiveRecord::Base
  attr_accessible :email, :message, :name

  validates :email, presence: true
  validates :message, presence: true
  validates :name, presence: true
      
end
