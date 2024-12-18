class Course < ApplicationRecord
  belongs_to :user
  has_many :enrollments, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :thumbnail, dependent: :destroy

  validates :title, :description, :max_capacity, :start_date, :end_date, presence: true

  scope :by_name, ->(name) { where('title ILIKE ?', "%#{name}%") }
  scope :by_category, ->(category) { where("category ILIKE ?", "%#{category}%") }
  scope :by_instructor, ->(instructor_email) {
    joins(:user).where('users.email ILIKE ?', "%#{instructor_email}%")
  }
end
