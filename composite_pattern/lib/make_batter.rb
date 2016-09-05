class MakeBatter < CompositeTask

  def initialize
    super
    add_task(AddDryIngredients.new)
    add_task(AddLiquids.new)
    add_task(Mix.new)
  end

end