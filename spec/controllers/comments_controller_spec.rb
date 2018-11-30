require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe 'new comments' do
    it 'renders a new comment form' do
      user = create(:user)
      sign_in user
      post = create(:post)
      get :new, params: { post_id: post.id }
      expect(subject).to render_template('new')
    end
  end

  describe 'creating comments' do
    it 'redirects if comment creation is successful' do
      user = create(:user)
      sign_in user
      post1 = create(:post)
      post :create, params: { post_id: post1.id, comment: { body: 'Hello, world!', user_id: user.id } }
      expect(response).to have_http_status(302)
    end

    it 'renders new template if creation not successful' do
      user = create(:user)
      sign_in user
      post1 = create(:post)
      post :create, params: { post_id: post1.id, comment: { body: nil, user_id: user.id } }
      expect(subject).to render_template('new')
    end
  end
end
