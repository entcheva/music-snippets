class AddIndexToSnippets < ActiveRecord::Migration[5.0]
  def change
    add_index :snippets, :user_id
  end
end
