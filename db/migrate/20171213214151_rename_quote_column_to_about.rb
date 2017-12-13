class RenameQuoteColumnToAbout < ActiveRecord::Migration
  def change
    rename_column :characters, :quote, :about
  end
end
