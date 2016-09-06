require 'rails_helper'

describe Storybook, type: :model do

  it 'is valid with valid attributes'

  it { should have_db_column(:body).of_type(:string) }
  it { should have_db_column(:cover).of_type(:string) }
  it { should have_db_column(:intro).of_type(:string) }
  it { should have_db_column(:title).of_type(:string) }

  it { should validate_presence_of(:title) }

  it { should respond_to(:body) }
  it { should respond_to(:cover) }
  it { should respond_to(:id) }
  it { should respond_to(:intro) }
  it { should respond_to(:title) }

end