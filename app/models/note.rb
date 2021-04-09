class Note < ActiveRecord::Base
  attr_accessible :content, :title

  belongs_to :notable, polymorphic: true

  validates :notable_type, inclusion: [Student].map(&:to_s)
  validates :title, presence: true
  validates :content, presence: true
end
