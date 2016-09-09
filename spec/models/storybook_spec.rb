# == Schema Information
#
# Table name: storybooks
#
#  id         :integer          not null, primary key
#  body       :string           default("")
#  cover      :string
#  intro      :string           default("")
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

describe Storybook, type: :model do

  it 'is valid with valid attributes' do
    expect(Storybook.new(storybook_attributes)).to be_valid
  end

  it { should have_db_column(:cover).of_type(:string) }
  it { should have_db_column(:intro).of_type(:string) }
  it { should have_db_column(:title).of_type(:string) }

  it { should validate_presence_of(:title) }

  it { should respond_to(:cover) }
  it { should respond_to(:id) }
  it { should respond_to(:intro) }
  it { should respond_to(:title) }

end
