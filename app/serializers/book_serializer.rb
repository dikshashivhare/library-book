# frozen_string_literal: true

# Serializes book data for the API.
class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :status, :checked_out_by

  def status
    object.checked_out_by.present? ? 'checked_out' : 'available'
  end

  def checked_out_by
    return unless object.checked_out_by

    {
      user_id: object.checked_out_by.id,
      user_name: object.checked_out_by.username,
      due_date: object.due_date
    }
  end
end
