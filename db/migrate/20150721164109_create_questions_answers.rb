class CreateQuestionsAnswers < ActiveRecord::Migration
  def change
    create_table :questions_answers do |t|
      t.column :question, :string
      t.column :answer, :string

      t.timestamps
    end
  end
end
