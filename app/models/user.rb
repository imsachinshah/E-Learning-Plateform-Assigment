class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { student: 'student', instructor: 'instructor' }

  has_many :courses, dependent: :destroy
  has_many :enrollments
  has_many :reviews
end
