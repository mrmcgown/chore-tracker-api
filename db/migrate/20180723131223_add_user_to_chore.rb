class AddUserToChore < ActiveRecord::Migration[5.1]
  def change
    add_reference :chores, :user, foreign_key: true
  end
end
