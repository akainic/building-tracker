class Owner < ActiveRecord::Base
  before_save :full_name

  has_many :buildings,
    inverse_of: :owner,
    dependent: :nullify
    
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_format_of :email,
    with: /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i

  private
  def full_name
    self.owner = "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

end
