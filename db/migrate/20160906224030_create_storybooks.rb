class CreateStorybooks < ActiveRecord::Migration[5.0]
  def change
    create_table :storybooks do |t|
      t.string :cover
      t.string :intro,  default: ''
      t.string :title,  null: false

      t.timestamps
    end
  end
end
