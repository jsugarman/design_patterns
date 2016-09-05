require_relative 'observable'

class Employee

  include Observable

  attr_accessor :name
  attr_reader :title, :salary

  def initialize args={}
    @name = args[:name]
    @title = args[:title]
    @salary = args[:salary]
    super()
  end

  def title= new_title
    old_title = @title
    @title = new_title
    if old_title != new_title
      notify_observers
    end
  end

  def salary= new_salary
    old_salary = @salary
    @salary = new_salary
    if old_salary != new_salary
      notify_observers
    end
  end

end
