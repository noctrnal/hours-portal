require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Api::V1::ItemsController, :type => :controller do
  it_behaves_like "api_controller"

  # This should return the minimal set of attributes required to create a valid
  # Item. As you add validations to Item, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {
      name: "Example Item",
      category_id: category.id,
    }
  }

  let(:invalid_attributes) {
    { name: "", category: nil }
  }

  let!(:category) { create(:category) }
  let!(:item) { create(:item) }

  describe "GET index" do
    it "assigns all items as @items" do
      get :index, { format: :json }
      expect(assigns(:items)).to eq([item])
    end
  end

  describe "GET show" do
    it "assigns the requested item as @item" do
      get :show, { id: item.id, format: :json }
      expect(assigns(:item)).to eq(item)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Item" do
        expect {
          post :create, { item: valid_attributes, format: :json }
        }.to change(Item, :count).by(1)
      end

      it "assigns a newly created item as @item" do
        post :create, { item: valid_attributes, format: :json }
        expect(assigns(:item)).to be_a(Item)
        expect(assigns(:item)).to be_persisted
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved item as @item" do
        post :create, { item: invalid_attributes, format: :json }
        expect(assigns(:item)).to be_a_new(Item)
      end

      it "re-renders the 'new' template" do
        post :create, { item: invalid_attributes }
        expect(response.status).to eq(422)
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        {
          name: "Example Updated Item",
          category: build(:category),
        }
      }

      it "updates the requested item" do
        put :update, { id: item.id, item: new_attributes }
        item.reload
        expect(item.name).to eq("Example Updated Item")
      end

      it "assigns the requested item as @item" do
        put :update, { id: item.id, item: valid_attributes }
        expect(assigns(:item)).to eq(item)
      end
    end

    describe "with invalid params" do
      it "assigns the item as @item" do
        put :update, { id: item.id, item: invalid_attributes }
        expect(assigns(:item)).to eq(item)
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested item" do
      expect {
        delete :destroy, { id: item.id, format: :json }
      }.to change(Item, :count).by(-1)
    end
  end

end
