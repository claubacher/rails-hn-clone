class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :article, null: false
      t.belongs_to :user

      t.timestamps
    end
  end
end
