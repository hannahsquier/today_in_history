class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :date
      t.string :headline
      t.text :snippet
      t.string :link
      t.string :image_link

      t.timestamps null: false
    end
  end
end
