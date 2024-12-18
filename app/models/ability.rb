# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.instructor?
      can :manage, Course, user_id: user.id
    elsif user.student?
      can :read, Course
      can :enroll, Course
      can :create, Review
    end
  end
end
