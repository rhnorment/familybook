def storybook_attributes(overrides={})
  {
      cover: 'cover.jpg',
      intro: 'This is the storybook intro',
      title: 'Storybook Title',
  }.merge(overrides)
end