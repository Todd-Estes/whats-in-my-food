class Food
  attr_reader :upc_code, :description, :brand_owner, :ingredients

  def initialize(attributes)
    @upc_code = attributes[:fdcId]
    @description = attributes[:description]
    @brand = attributes[:brandOwner]
    @ingredients = attributes[:ingredients]
  end
end
