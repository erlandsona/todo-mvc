RSpec.describe TodosController, type: :controller do

  describe "#index" do
    before { get :index }
    it { is_expected.to respond_with :ok }
  end

  describe "#show" do
    let(:model) { Todos::Create.(todo: "Stuff").model }
    before { get :show, id: model }
    it { is_expected.to respond_with :ok }
  end

  describe "#create" do
    context "It creates..." do
      before { post :create, todo: "Hey yo" }
      it { is_expected.to respond_with :ok }
    end
    context "It fails to create" do
      before { post :create, bogus: "Blah de dah" }
      it { is_expected.to respond_with 404 }
    end
  end

  describe "#update" do
    let(:model) { Todos::Create.(todo: "Stuff").model }
    it { expect(model.todo).to eq "Stuff" }
    it "Updates and responds with :ok" do
      patch :update, id: model, todo: "Stuff and more Things!!!"
      expect(subject).to respond_with :ok
      updated_model = Todos::Update.present(model).model
      expect(updated_model.todo).to eq "Stuff and more Things!!!"
    end
  end

  describe "#destroy" do
    let(:model) { Todos::Create.(todo: "More stuff").model }
    it { expect(model).to be_present }
    it "destroys the model" do
      delete :destroy, id: model
      expect(subject).to respond_with :ok
    end
  end

end
