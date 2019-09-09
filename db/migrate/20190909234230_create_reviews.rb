class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :subject
      t.string :message
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
