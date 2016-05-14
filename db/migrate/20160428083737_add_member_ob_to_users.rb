class AddMemberObToUsers < ActiveRecord::Migration
  def change
    add_column :users, :member_of, :string
  end
end
