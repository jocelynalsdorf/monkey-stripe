class CreateMonkeys < ActiveRecord::Migration
  def change
    create_table :monkeys do |t|
    	t.column :title, :string
    	t.column :age, :string
    	t.column :gender, :string
    	t.column :story, :text
    end
  end
end
