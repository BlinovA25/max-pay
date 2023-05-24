class Lesson < ApplicationRecord
  belongs_to :user

  def self.search(header)
    lessons = header ? Lesson.where("lower(header) LIKE ?", "%#{header.downcase}%") : Lesson.all
  end
end
