class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, length: 128, null: false
      t.string :last_name, length: 128, null: false
      t.string :email, null: false, length: 128, index: {unique: true}
      t.string :password, null: false, length: 256

      t.timestamps
    end
  end
end
