def create_storybooks(table)
  table.hashes.each do |row|
    Storybook.create(
        {
            title: row['title'],
            cover: row['cover'],
            intro: row['intro'],
            body: row['body'],
        }
    )
  end
end