# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  answer_choice_id :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  respondent_id    :integer
#

class Response < ApplicationRecord
  validates :answer_choice_id, presence: true
  validate :answer_choice, :respondent, presence: true
  
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice
    
  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :respondent_id,
    class_name: :User
  
end
