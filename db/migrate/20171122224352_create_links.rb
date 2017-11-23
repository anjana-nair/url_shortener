class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.string :in_url
      t.text :out_url
      t.integer :http_status, :default_status => 301

      t.timestamps
    end

add_index :links, :in_url
  end
end
