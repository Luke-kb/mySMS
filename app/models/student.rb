class Student < ActiveRecord::Base
  attr_accessible :title, :birth_date, :email, :first_name, :gender, :last_name, :middle_name

  validates :first_name, presence: true, exclusion: [nil]
  validates :last_name, presence: true, exclusion: [nil]
  validates :email, presence: true, uniqueness: true, exclusion: [nil]
  validates :birth_date, presence: true, exclusion: [nil]
  validates :gender, presence: true, exclusion: [nil]

  def full_name
    [title, first_name, middle_name, last_name].join(' ')
  end

end
