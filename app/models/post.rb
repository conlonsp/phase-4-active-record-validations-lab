class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: ["Fiction", "Non-Fiction"]
  validate :true_facts

  def true_facts
    if title == "True Facts"
      errors.add(:title, "Not Valid Title")
    end
  end
end
