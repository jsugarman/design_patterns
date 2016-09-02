class TaxMan

  def after_update_employee changed_employee
    puts "#{changed_employee.name} has a new salary of #{changed_employee.salary}"
  end

end