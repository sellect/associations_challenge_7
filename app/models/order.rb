class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :notes

  validates_uniqueness_of :track_num
end
