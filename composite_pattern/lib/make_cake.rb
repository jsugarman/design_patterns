class MakeCake < CompositeTask

  def initialize
  super
    add_task(MakeBatter.new)
    add_task(FillPan.new)
    add_task(Bake.new)
  end

end