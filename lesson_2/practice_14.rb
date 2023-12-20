# ** Problem **
  # explicit rules: return an array
  #                 include colors if fruit, and sizes if vegetables
  #                 sizes should be upper case while colors are capitalized

  # implicit rules: make each value same level of array
  #
  # clarifying questions: are colors always nested arrays? (assume Y)
  #                       are sizes always string? (assume Y)

# ** Examples **
  # desired return => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# ** Data **
  #

# ** Algorithm **
  # create new aray to capture values
  # take each hash entry
  #   check if fruit or vegetable
  #     if fruit -> take each color
  #         capitalize and append to array
  #     if vegetable - > append upcased size

# ** Code **
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

colors_and_sizes = []

hsh.each_value do |inner_hash|
  case inner_hash[:type]
  when 'fruit'
    colors_and_sizes << inner_hash[:colors].map { |color| color.capitalize }
  when 'vegetable'
    colors_and_sizes << inner_hash[:size].upcase
  end
end

p colors_and_sizes == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
