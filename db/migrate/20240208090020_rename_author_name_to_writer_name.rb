class RenameAuthorNameToWriterName < ActiveRecord::Migration[7.1]
  def change
    rename_column(:articles, :author_name, :writer_name)
  end
end
