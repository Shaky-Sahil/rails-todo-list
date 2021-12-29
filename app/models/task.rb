class Task < ApplicationRecord
    validates :body, presence: true, length: { maximum: 30 }
    validates :status, presence: true, inclusion: { in: ["done","pending"] }
end
