class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :flickr_id

      t.timestamps
    end
  end
end
