class Building < ActiveRecord::Base
   belongs_to :state 

  validates_presence_of :street_address
  validates_presence_of :city
  validates_format_of :postal_code,
    with: /\A\d{5}\z/

end
