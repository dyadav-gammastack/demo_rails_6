class Task < ApplicationRecord
  has_rich_text :content

  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :comments, allow_destroy: true, reject_if: :all_blank
end
