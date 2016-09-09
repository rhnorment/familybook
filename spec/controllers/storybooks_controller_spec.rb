require 'rails_helper'

describe StorybooksController, type: :controller do

  let(:storybook_1) { Storybook.create!(storybook_attributes(title: 'Storybook 1')) }
  let(:storybook_2) { Storybook.create!(storybook_attributes(title: 'Storybook 2')) }
  let(:storybook_3) { Storybook.create!(storybook_attributes(title: 'Storybook 3')) }

  describe '#index' do
    it { should route(:get, '/storybooks').to(action: :index) }

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

    before { get :show, id: storybook_1.id }

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

end
