class AddAttachmentImageToMonkeys < ActiveRecord::Migration
  def self.up
    change_table :monkeys do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :monkeys, :image
  end
end
