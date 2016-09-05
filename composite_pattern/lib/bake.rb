class Bake < Task

  def initialize
    super('bake')
  end

  def time_required
    50.0
  end

end
