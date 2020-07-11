class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      # t.refrences :sunbject
      # t.belongs_to :subject
      t.integer :subject_id, index:true
      t.string :name
      t.string :permalink

      t.timestamps
    end
  end
end
