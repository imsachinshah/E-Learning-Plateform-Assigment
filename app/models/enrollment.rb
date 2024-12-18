class Enrollment < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validate :seat_availability

  def seat_availability
    if course.enrollments.count >= course.max_capacity
      errors.add(:course, 'is full')
    end
  end
end
