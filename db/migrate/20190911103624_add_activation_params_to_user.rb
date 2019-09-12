class AddActivationParamsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :activation_digest, :string
    add_column :users, :activate, :boolean, default: false
    add_column :users, :activation_date, :timestamp
  end
end
