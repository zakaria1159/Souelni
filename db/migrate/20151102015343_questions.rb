class CreateQuestions < ActiveRecord::Migration
  def change
     create_table :questions do |t|
      t.string :titre
      t.string :categorie
      t.text :question
      
      t.timestamps
    end
  end
end
