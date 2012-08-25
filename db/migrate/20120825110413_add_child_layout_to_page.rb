class AddChildLayoutToPage < ActiveRecord::Migration
  def self.up
		add_column :pages, :child_layout_id, :integer
  end

  def self.down
		remove_column :pages, :child_layout_id
  end
end
