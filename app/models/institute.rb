class Institute < ActiveRecord::Base
  attr_accessible :name

  has_many :courses

  validates :name, presence: true, uniqueness: true
end
