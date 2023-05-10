class CreateLessons < ActiveRecord::Migration[7.0]
  def change
    create_table :lessons do |t|
      t.string :header
      t.string :text
      t.references :user, null: false, foreign_key: true
      t.jsonb :data

      t.timestamps
    end
  end
end
