class CreateSocks < ActiveRecord::Migration
  def change
    create_table :socks do |t|
      t.string :name, limit: 255
    end
  end
end
