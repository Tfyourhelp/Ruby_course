class PersonCoffeeMachineInterface
  def select_drink_type
    # select drink type logic
  end
  
  def select_portion
    # select portion logic
  end
  
  def select_sugar_amount
    # select sugar logic
  end
  
  def brew_coffee
    #brew coffee logic
  end
end

class StaffCoffeeMachineInterface
  def clean_coffee_machine
    # clean coffee machine logic
  end
  
  def fill_coffee_beans
    #fill coffee beans logic
  end
  
  def fill_water_supply
    # fill waterr logic\
  end
  
  def fill_sugar_supply
    # full sugar logic
  end
end

class Person
  def initialize
    @coffee_machine = PersonCoffeeMachineInterfac.new
  end
  
  def make_coffee
    @coffee_machine.select_drink_type
    @coffee_machine.select_portion
    @coffee_machine.select_sugar_amount
    @coffee_machine.brew_coffee
  end
end

class Staff
  def initialize
    @coffee_machine = StaffCoffeeMachineInterface.new
  end
  
  def serv
    @coffee_machine.clean_coffee_machine
    @coffee_machine.fill_coffee_beans
    @coffee_machine.fill_water_supply
    @coffee_machine.fill_sugar_supply
  end
end