class AddSlugToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :slug, :string, unique: true
    add_column :articles, :public, :boolean
  end
end
