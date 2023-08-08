# frozen_string_literal: true

module Api
  module V1
    # Controller for handling library-related actions in API version 1.
    class LibrariesController < ApplicationController
      def books
        library = Library.find(params[:id])
        books = library.books

        render json: books, each_serializer: BookSerializer # Corrected name here
      end
    end
  end
end
