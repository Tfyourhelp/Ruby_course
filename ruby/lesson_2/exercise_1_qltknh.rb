class Bankaccountmanager
  attr_reader :bank_account, :name, :balance

  def initialize(bank_account, name, balance)
    @bank_account = bank_account
    @name = name
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
    puts "Bạn vừa nạp vào #{amount} tiền . Số dư tài khoản bây giờ là #{@balance}"
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
      puts "Bạn vừa rút #{amount} tiền . Số dư tài khoản bây giờ là #{@balance}"
    else
      puts 'Số dư tài khoản không đủ.'
    end
  end

  def display_balance(bank_account_input, name_input)
    if check_info(bank_account_input, name_input)
      display_info
    else
      puts 'Mã số tài khoản hoặc tên khoản không chính xác'
    end
  end

  def change_name(bank_account_input, name_input_old, name_input_new)
    if check_info(bank_account_input, name_input_old)
      @name = name_input_new
      display_info
    else
      puts 'Mã số tài khoản hoặc tên khoản cũ không chính xác'
    end
  end

  def menu
    puts '|-------------MENU-------------|'
    puts '|1/ Nạp tiền tài khoản         |'
    puts '|2/ Rút tiền tài khoản         |'
    puts '|3/ Sao kê tài khoản           |'
    puts '|4/ Cập nhật tên chủ tài khoản |'
    puts '|------------------------------|'

    while true
      option = gets.chomp
      case option.to_i
      when 1
        print 'Nhập số tiền cần nạp: '
        amount = gets.chomp
        deposit(amount.to_i)
        break
      when 2
        print 'Nhập số tiền cần rút: '
        amount = gets.chomp
        withdraw(amount.to_i)
        break
      when 3
        print 'Nhập mã số tài khoản: '
        bank_account_input = gets.chomp
        print 'Nhập tên tài khoản:'
        name_input = gets.chomp
        display_balance(bank_account_input.to_i, name_input)
        break
      when 4
        print 'Nhập mã số tài khoản: '
        bank_account_input = gets.chomp
        print 'Nhập tên tài khoản cũ: '
        name_input_old = gets.chomp
        print 'Nhập tên tài khoản mới: '
        name_input_new = gets.chomp
        change_name(bank_account_input.to_i, name_input_old, name_input_new)
        break
      else
        puts 'Vui lòng nhập giá trị là 1 hoặc 2 hoặc 3 hoặc 4'
      end
    end
  end

  private

  def check_info(bank_account_input, name_input)
    (@bank_account == bank_account_input) && (@name == name_input)
  end

  def display_info
    puts "Tên tài khoản của bạn là #{@name}. Số dư tài khoản bây giờ là #{@balance}"
  end
end

duy_account = Bankaccountmanager.new(0o01, 'Duy', 10_000)
duy_account.menu