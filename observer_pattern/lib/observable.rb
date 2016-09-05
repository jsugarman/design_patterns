module Observable

  def initialize
    @observers = []
  end

  def add_observer observer
    @observers << observer
  end

  def remove_observer observer
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each do |observer|
      observer.after_update_employee(self)
    end
  end

end