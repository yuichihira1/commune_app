class AddAvatarToPages < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :pages, :avatar
  end

  def self.down
    remove_attachment :pages, :avatar
  end
end
