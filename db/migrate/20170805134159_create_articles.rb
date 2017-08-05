class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.string :title
      t.string :image
      t.string :summary
      t.text :content
      t.integer :read_count
      t.integer :status
      t.boolean :top

      t.timestamps
      t.index :user_id
    end
  end
end
