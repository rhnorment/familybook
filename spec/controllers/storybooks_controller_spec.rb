require 'rails_helper'

describe StorybooksController, type: :controller do

  describe '#index' do
    it { should route(:get, '/storybooks').to(action: :index) }

    let(:storybook_1) { Storybook.create!(storybook_attributes(title: 'Storybook 1')) }
    let(:storybook_2) { Storybook.create!(storybook_attributes(title: 'Storybook 2')) }
    let(:storybook_3) { Storybook.create!(storybook_attributes(title: 'Storybook 3')) }

    before { get :index }

    it { should respond_with(:success) }
    it { should render_with_layout(:application) }
    it { should render_template(:index) }
    it { should_not set_flash }

    it 'should correctly assign the storybook collection' do
      expect(assigns(:storybooks)).to include(storybook_1, storybook_2, storybook_3)
    end
  end

  describe '#show' do
    it { should route(:get, '/storybooks/1').to(action: :show, id: 1) }

    let(:storybook_1) { Storybook.create!(storybook_attributes(title: 'Storybook 1')) }
    let(:storybook_2) { Storybook.create!(storybook_attributes(title: 'Storybook 2')) }
    let(:storybook_3) { Storybook.create!(storybook_attributes(title: 'Storybook 3')) }

    before { get :show, params: { id: storybook_1.id } }

    it { should respond_with(:success) }
    it { should render_with_layout(:application) }
    it { should render_template(:show) }
    it { should_not set_flash }

    it 'should assign the correct storybook object' do
      expect(assigns(:storybook)).to eql(storybook_1)
    end

    it 'should not assign the other storybooks' do
      expect(assigns(:storybook)).to_not eql(storybook_2 || storybook_3)
    end
  end

  describe '#new' do
    it { should route(:get, '/storybooks/new').to(action: :new) }

    before { get :new }

    it { should respond_with(:success) }
    it { should render_with_layout(:application) }
    it { should render_template(:new) }
    it { should_not set_flash }

    it 'should assign the correct storybook object' do
      expect(assigns(:storybook)).to be_a_new(Storybook)
    end
  end

  describe '#create' do
    it { should route(:post, '/storybooks').to(action: :create) }

    context 'valid storybook' do
      let(:valid_storybook) { storybook_attributes }

      before do
        post :create, params: { storybook: valid_storybook }
      end

      it { should respond_with(:redirect) }
      it { should redirect_to(storybook_url(Storybook.last)) }
      it { should set_flash[:success] }

      it 'should change the storybook count' do
        expect(Storybook.count).to eql(1)
      end
    end

    context 'invalid storybook' do
      let(:invalid_storybook) { storybook_attributes(title: '') }

      before do
        post :create, params: { storybook: invalid_storybook }
      end

      it { is_expected.to respond_with(:success) }
      it { is_expected.to render_template(:new) }
      it { is_expected.to set_flash.now[:error] }

      it 'should not change the storybook count' do
        expect(Storybook.count).to eql(0)
      end
    end
  end
end

