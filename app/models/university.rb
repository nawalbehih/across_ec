class University < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  has_many :applications
  has_many :registrars
end
