# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post, inverse_of: :comments
  belongs_to :account

  validates :content, presence: true, length: { min: 4 }
end
