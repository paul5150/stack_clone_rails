class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.column :info, :string
      t.column :question_id, :integer
      t.column :name, :string

      t.timestamps
    end
  end
end
