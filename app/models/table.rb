class Table < ActiveRecord::Base
  has_many :orders

  validates :guests, presence: true


end
