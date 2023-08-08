# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'LibraryBooks API', type: :request do
  let(:library) { create(:library) }
  let(:book1) { create(:book, library: library) }
  let(:book2) { create(:book, :checked_out, library: library, checked_out_by: create(:user)) }

  describe 'GET /api/v1/libraries/:id/books' do
    before { get "/api/v1/libraries/#{library.id}/books" }

    it 'returns books with status and checked_out_by information' do
      expect(json).not_to be_empty

      expect(json[0]['title']).to eq(book1.title)
      expect(json[0]['status']).to eq('available')

      expect(json[1]['title']).to eq(book2.title)
      expect(json[1]['status']).to eq('checked_out')
      expect(json[1]['checked_out_by']).to eq(book2.checked_out_by&.username)
    end
  end
end
