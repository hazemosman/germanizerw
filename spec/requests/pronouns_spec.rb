require 'rails_helper'

RSpec.describe "Pronouns", type: :request do
  describe "GET /pronouns" do
    it "works! (now write some real specs)" do
      get pronouns_path
      expect(response).to have_http_status(200)
    end
  end
end
