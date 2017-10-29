class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
    	t.string   :title
    	t.references    :user_id
    	t.string      :text

      t.timestamps
    end
  end
end
