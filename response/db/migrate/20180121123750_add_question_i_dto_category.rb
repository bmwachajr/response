class AddQuestionIDtoCategory < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :question, :category
  end
end
