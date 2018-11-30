require 'rails_helper'

RSpec.describe AlbumsController, type: :controller do
  describe 'GET /albums' do
    it 'responds with 302 if not logged in' do
      get :index, params: { user_id: 1 }
      expect(response).to have_http_status(302)
    end

    it 'renders the index template' do
      user = create(:user)
      sign_in user
      get :index, params: { user_id: user.id }
      expect(subject).to render_template('index')
    end
  end

  describe 'creating an album' do
    it 'renders the new template to create an album' do
      user = create(:user)
      sign_in user
      get :new, params: { user_id: user.id }
      expect(subject).to render_template('new')
    end

    it 'redirects once successfully created' do
      user = create(:user)
      sign_in user
      post :create, params: { album: { name: 'Test', photos: [] }, user_id: user.id }
      expect(response).to have_http_status(302)
    end

    it 'renders the new template again if not successfully created' do
      user = create(:user)
      sign_in user
      post :create, params: { album: { name: nil, photos: [] }, user_id: user.id }
      expect(response).to have_http_status(200)
      expect(subject).to render_template('new')
    end
  end

  describe 'GET /albums/id' do
    it 'renders the show template' do
      user = create(:user)
      album = create(:album)
      sign_in user
      get :show, params: { id: album.id, user_id: user.id }
      expect(subject).to render_template('show')
    end
  end
end
