class Table < ActiveRecord::Base
  belongs_to :users
  has_and_belongs_to_many :fooditems

  validates :guests,presence: true


end
