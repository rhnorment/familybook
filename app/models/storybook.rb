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

class Storybook < ApplicationRecord

  validates   :title, presence: true


end
