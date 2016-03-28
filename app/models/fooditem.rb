class Fooditem < ActiveRecord::Base

  has_and_belongs_to_many :orders, through: :fooditem_orders

  validates :itemname, presence: true, uniqueness: true
  validates :cuisine, presence: true
  validates :price, numericality: true

end
