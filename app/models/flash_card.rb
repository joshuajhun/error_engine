class FlashCard < ActiveRecord::Base
  belongs_to :topic
  validates :question, :answer, presence: true 
end
