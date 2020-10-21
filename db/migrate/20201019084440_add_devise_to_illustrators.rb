# frozen_string_literal: true

class AddDeviseToIllustrators < ActiveRecord::Migration[5.2]
  def change
    create_table :illustrators do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :illustrator_name
      t.string :name
      t.integer :address_number
      t.text :address
      t.string :telephone
      t.string :profile_image_id
      t.boolean :is_deleted

      # Uncomment below if timestamps were not included in your original model.
      # t.timestamps null: false
    end

    add_index :illustrators, :email,                unique: true
    add_index :illustrators, :reset_password_token, unique: true
    # add_index :illustrators, :confirmation_token,   unique: true
    # add_index :illustrators, :unlock_token,         unique: true
  
  end
end
