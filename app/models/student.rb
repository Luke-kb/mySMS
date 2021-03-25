class Student < ActiveRecord::Base
  attr_accessible :title, :title_id, :birth_date, :email, :first_name, :gender, :last_name, :middle_name

  belongs_to :title

  validates :title, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :birth_date, presence: true
  validates :gender, presence: true

end
