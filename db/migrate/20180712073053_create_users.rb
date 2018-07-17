class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :login
      t.string :password
      t.references :company, foreign_key: true
      t.references :user_type, foreign_key: true

      t.timestamps
    end
  end
end
