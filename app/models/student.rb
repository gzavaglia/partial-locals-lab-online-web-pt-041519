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
  
  # def self.search(name)
  #   if name.present?
  #     where('NAME like ?', "%#{name}%")
  #   else
  #     self.all
  #   end
  # end
  
  def self.search(namex)
    self.all.select! { |student| student.name == namex}
  end

end
