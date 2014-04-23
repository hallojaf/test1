module CSVParsing
  require 'csv'

  def parse_rows_to_objects(args)
    CSV.read(args[:filename], use_headers).map { |row_data| args[:klass].new(row_data) }
  end

  private
  def use_headers
    { headers: true, header_converters: :symbol }
  end
end


class Recipe
  attr_reader :id, :name

  def initialize(args)
    @id = args[:id]
    @name = args[:name]
    @description = args[:description]
    @ingredients = args[:ingredients]
    @directions = args[:directions]
  end

  def to_s
<<-string_form

#{short_form}
#{description}

Ingredients:
#{ingredients}

Preperation Instructions:
#{directions}


string_form
  end

  def short_form
    "#{id} - #{name}"
  end

  private
  attr_reader :description, :ingredients, :directions
end


class Bistro
  include CSVParsing

  def initialize(filename)
    @recipes = parse_rows_to_objects(filename: filename, klass: Recipe)
  end

  def find_recipe_by_id(recipe_id)
    recipe = recipes.find { |recipe| recipe.id == recipe_id }
    return recipe if recipe

    raise "Can't find a recipe with an id of #{recipe_id.inspect}"
  end

  def alphabetized_recipe_list
    recipes.sort_by(&:name).map(&:short_form)
  end

  private
  attr_reader :recipes
end




if ARGV.any?

  bistro = Bistro.new("recipes.csv")

  case ARGV[0]
  when "list"    then puts bistro.alphabetized_recipe_list
  when "display" then puts bistro.find_recipe_by_id(ARGV[1])
  end
end
