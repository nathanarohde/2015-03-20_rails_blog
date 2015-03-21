class AddPostsAndComments < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :content, :text

      t.date
    end

    create_table :comments do |t|
      t.column :text, :text
      t.column :post_id, :integer

      t.date
    end
  end
end
