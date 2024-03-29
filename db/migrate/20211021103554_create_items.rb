class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :shohin_name,    null: false
      t.text       :explanation,    null: false
      t.integer    :price,          null: false
      t.integer    :status_id,      null: false
      t.integer    :prefecture_id,  null: false
      t.integer    :sending_day_id, null: false
      t.references :user,           null: false, foreign_key: true
      t.integer    :genre_id,       null: false
      t.integer    :charge_id,      null: false
      t.timestamps
    end
  end
end
