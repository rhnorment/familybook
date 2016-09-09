module Navigation
  def path_to(page_name)
    case page_name

      when /the home\s?page/
        '/'
      when /the storybook\s?page/
        '/storybooks/1'
      else
        begin
          page_name =~ /the (.*) page/
          path_components = $1.split(/\s+/)
          self.send(path_components.push('path').join('_'))
        rescue Object => e
          raise "Can't find mapping from \"#{page_name}\" to a page.\n" +
                    "Now, go add a mapping in #{__FILE__}"
        end
    end
  end
end

World(Navigation)