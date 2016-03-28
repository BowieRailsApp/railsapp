class Order < ActiveRecord::Base
  belongs_to :tables
  has_and_belongs_to_many :fooditems

end
