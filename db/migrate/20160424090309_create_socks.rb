class CreateSocks < ActiveRecord::Migration
  def change
    create_table :socks, id: :uuid do |t|
      t.string :title, limit: 255
      t.string :body, limit: 255
      t.integer :user_id
      t.decimal :latitude, precision: 10, scale: 6
      t.decimal :longitude, precision: 10, scale: 6
    end
  end
end
