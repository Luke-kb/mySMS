class Note < ActiveRecord::Base
  attr_accessible :content, :title

  belongs_to :notable, polymorphic: true

  validates :title, presence: true
  validates :content, presence: true
end
