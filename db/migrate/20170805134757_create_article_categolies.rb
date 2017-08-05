class CreateArticleCategolies < ActiveRecord::Migration[5.0]
  def change
    create_table :article_categolies do |t|
      t.integer :article_id
      t.integer :category_id

      t.timestamps
    end
  end
end
