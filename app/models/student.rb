class Student < ActiveRecord::Base
  attr_accessible :title, :birth_date, :email, :first_name, :gender, :last_name, :middle_name

  def full_name
    [title, first_name, middle_name, last_name].join(' ')
  end

end
