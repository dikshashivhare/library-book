# frozen_string_literal: true

class User < ApplicationRecord
  has_many :checked_out_books, class_name: 'Book', foreign_key: 'checked_out_by'
end
