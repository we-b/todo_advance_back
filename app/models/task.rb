class Task < ApplicationRecord
  belongs_to :genre
  with_options presence: true do
    validates :name
    validates :explanation
    validates :deadline_date
    validates :status
  end
end
