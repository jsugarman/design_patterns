#
# super class of tasks made up of several others tasks
#
class CompositeTask < Task

  def initialize
    super(self.class)
    @subtasks = []
  end

  def add_task(task)
    @subtasks << task
  end

  def remove_task(task)
    @subtasks.delete(task)
  end

  # time required will be made up of composite tasks
  def time_required
    total = 0
    @subtasks.each do |task|
      total += task.time_required
    end
    total
  end

end