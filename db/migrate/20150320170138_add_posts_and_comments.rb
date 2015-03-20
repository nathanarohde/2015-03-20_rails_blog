class AddPostsAndComments < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :content, :text
      t.column :date, :date

      t.timestamps
    end

    create_table :comments do |t|
      t.column :text, :text
      t.column :post_id, :integer
      t.column :date, :date

      t.timestamps
    end
  end
end
