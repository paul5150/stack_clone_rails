class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.column :question, :string
      t.column :answer, :string

      t.timestamps
    end
  end
end
