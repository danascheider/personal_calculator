require 'rails_helper'

RSpec.describe CalculationsController, type: :controller do

  describe "GET #age" do
    let(:request_body) { { data: { birthdate: "1986-07-02T00:00:00Z" } } }

    it "returns http success" do
      post :age, request_body
      expect(response).to have_http_status(:success)
    end
  end

end
