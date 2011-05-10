class AddDatastoreToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.string :data_service_host
    end

  end

  def self.down
     remove_column :users, :data_service_host
  end
end
