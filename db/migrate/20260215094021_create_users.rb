class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :password_digest
      t.string :icon_img_url
      t.text :introduction
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
