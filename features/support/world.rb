module Storybooks
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
end


module Navigation
  def path_to(page_name)
    case page_name

      when /the home\s?page/
        '/'
      else
        begin
          page_name =~ /the (.*) page/
          path_components = $1.split(/\s+/)
          self.send(path_components.push('path').join('_')).to_sym
        rescue Object => e
          raise "Can't find mapping from \"#{page_name}\" to a page.\n" +
                    "Now, go add a mapping in #{__FILE__}"
        end
    end
  end
end

World(Storybooks, Navigation)