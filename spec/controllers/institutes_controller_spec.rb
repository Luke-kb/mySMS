require 'rails_helper'

RSpec.describe InstitutesController, type: :controller do
  let!(:institute) { create(:institute) }

  describe "GET #index" do
    subject { get :index }

    it { is_expected.to have_http_status(200) }
    it { is_expected.to render_template("institutes/index")}

    it "returns list of institutes" do
      subject
      expect(assigns(:institutes)).to eq [institute]
    end
  end

  describe "GET #show" do
    subject { get :show, id: institute }

    it { is_expected.to have_http_status(200) }
    it { is_expected.to render_template("institutes/show") }

    it "assigns requested institute to @institute" do
      subject
      expect(assigns(:institute)).to eq institute
    end
  end

  describe "PUT #update" do
    context "with valid attributes" do
      subject { put :update, id: institute, institute: attributes_for(:institute, name: "Cool School") }

      it "updates institute attributes" do
        expect { subject }.to change { institute.reload.name }.to("Cool School")
      end

      it { is_expected.to redirect_to institute }
    end

    context "with invalid attributes" do
      subject { put :update, id: institute, institute: attributes_for(:institute, name: nil) }
      
      it { is_expected.to render_template("institutes/edit")}

      it "does not update institute attributes" do
        subject
        expect(institute.reload.name).to_not be_nil
      end
    end
  end
end
