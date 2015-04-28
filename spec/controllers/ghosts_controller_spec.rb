# spec/controllers/ghosts_controller_spec.rb

require 'rails_helper'

# describe "POST #collect" do
#   context "with valid attributes" do
#     it "redirects to the status page"
#   end
# end

RSpec.describe GhostsController, type: :controller do
  describe 'GET status' do
    it 'populates an array of ghosts obtained' do
      get :status, platform: 'xbl', guardian: 'ad1h'
      assigns(:ghosts_obtained).should_not be_empty
    end

    context 'with valid attributes' do
      it 'renders the :status template' do
        get :status, platform: 'xbl', guardian: 'ad1h'
        response.should render_template :status
      end
    end
  end
end

# describe "GET #planet" do
#   context "with valid attributes" do
#     it "renders the :planet template"
#   end
# end
