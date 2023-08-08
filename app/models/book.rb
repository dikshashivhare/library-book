# frozen_string_literal: true

# Represents a book in the library.
class Book < ApplicationRecord
  belongs_to :library
  belongs_to :checked_out_by, class_name: 'User', optional: true

  def book_status
    checked_out_by.present? ? 'checked_out' : 'available'
  end

  def checked_out_by_username
    checked_out_by&.username
  end
end
