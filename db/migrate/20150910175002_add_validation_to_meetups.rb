class AddValidationToMeetups < ActiveRecord::Migration
  def up
    change_column :meetups, :title, :string, presence: true, null: false
    change_column :meetups, :description, :string, presence: true, null: false
    change_column :meetups, :location, :string, presence: true, null: false

  end

  def down
    change_column :meetups, :title, :string, null: false
    change_column :meetups, :description, :string, null: false
    change_column :meetups, :location, :string, null: false
  end

end
