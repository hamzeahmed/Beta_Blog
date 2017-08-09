class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
