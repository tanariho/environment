class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :email

      t.index [:email], unique: true, name: "index_users_on_email"
      t.index [:uid], unique: true, name: "index_users_on_uid"

      t.timestamps
    end
  end
end
