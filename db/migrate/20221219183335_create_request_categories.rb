class CreateRequestCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :request_categories do |t|
      t.references :request, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
