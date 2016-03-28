class Table < ActiveRecord::Base

  validates :guests, presence: true

end
