require_relative 'tax_man'
require_relative 'employee'
tax_man = TaxMan.new

john = Employee.new(title:'VC', salary: 3000, name: 'john')
john.add_observer(tax_man)
[3500,3400,2300].each do |new_sal|
  john.salary = new_sal
end


