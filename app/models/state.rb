class State < ActiveRecord::Base
  has_many :buildings

  validates_presence_of :state
end
