class Course < ActiveRecord::Base
  attr_accessible :allocation, :description, :end_date, :name, :number_of_semesters, :start_date, :institute_id

  belongs_to :institute

  validates :name, presence: true
  validates :description, presence: true
  validates :number_of_semesters, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :allocation, presence: true

end
