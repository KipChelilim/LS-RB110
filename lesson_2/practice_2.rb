# ** Problem **
  # explicit rules: earliest to latest
  #                 based on :published key within inner hashes
  # implicit rules:
  #
  # clarifying questions:
  #
  #

# ** Examples **
  # first is War and Peace
  # second is Ulysses
  # third is The Great Gatsby
  # fourth is One Hundred Years of Solitude

# ** Data **
  # nested hashes, can select keys as sorting criteria for each element

# ** Algorithm **
  # get first hash, then get key from hash
  # get second hash, then get key from hash
  # convert values to integers
  # compare to values
  # repeat

# ** Code **
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

p books.sort_by { |book| book[:published].to_i }