class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.references :user, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
