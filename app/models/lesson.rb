require 'hatch'

class Lesson < ApplicationRecord
  include Hatch

  belongs_to :user

  def self.search(header)
    lessons = header ? Lesson.where("lower(header) LIKE ?", "%#{header.downcase}%") : Lesson.all
  end

  certifies(:header, :not_empty, "This is an error! Where's my header?!")

  certify(:text, 'Logical text should contain more than 20 symbols') do |text|
    text.length > 20
  end
end
