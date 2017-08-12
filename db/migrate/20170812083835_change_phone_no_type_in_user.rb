class ChangePhoneNoTypeInUser < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :phone_no, :bigint
  end
end
