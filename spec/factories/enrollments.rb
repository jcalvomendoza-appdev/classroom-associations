# == Schema Information
#
# Table name: enrollments
#
#  id         :integer          not null, primary key
#  course_id  :integer
#  student_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require Rails.root.join("spec", "support", "increasing_random.rb")

FactoryBot.define do
  factory :enrollment do
    sequence(:student_id) { |n| "Some fake student ID #{n}" }
    sequence(:course_id) { |n| "Some fake course ID #{n}" }
  end
end
