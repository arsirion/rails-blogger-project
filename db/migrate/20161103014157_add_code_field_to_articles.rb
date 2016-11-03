class AddCodeFieldToArticles < ActiveRecord::Migration[5.0]
  def change
  	add_column :articles, :code, :string
  end
end
