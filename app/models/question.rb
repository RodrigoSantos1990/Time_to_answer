class Question < ApplicationRecord
  belongs_to :subject,counter_cache: true, inverse_of: :questions
  has_many :answers
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  paginates_per 1

  scope :_search_, ->(page,term){
    includes(:answers).where("lower(description) LIKE ?","%#{term.downcase}%").page(page)
    }

    scope :_search_subject, ->(page,subject_id){
      includes(:answers, :subject).where(subject_id: subject_id).page(page)
      }


  scope :last_questions, ->(page){
    includes(:answers, :subject).order('created_at desc').page(page)

    }
end
