# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  hometown   :string
#  birthday   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ActiveRecord::Base
  has_many :classroom_students
  has_many :classrooms, through: :classroom_students
  
  def self.search(name)
  #   if query.present?
  #     where('NAME like ?', "%#{query}%")
  #   else
  #     self.all
  #   end
  # end
  self.name.select do |each_name|
    each_name
  end
end

end
