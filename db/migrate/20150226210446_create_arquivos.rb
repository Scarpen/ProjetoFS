class CreateArquivos < ActiveRecord::Migration
  def change
    create_table :arquivos do |t|
      t.integer :user_id
      t.string :arquivo

      t.timestamps
    end
  end
end
