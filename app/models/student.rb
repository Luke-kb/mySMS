class Student < ActiveRecord::Base
  attr_accessible :title, :birth_date, :email, :first_name, :gender, :last_name, :middle_name

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :birth_date, presence: true
  validates :gender, presence: true

  def full_name
    [title, first_name, middle_name, last_name].join(' ')
  end

end
