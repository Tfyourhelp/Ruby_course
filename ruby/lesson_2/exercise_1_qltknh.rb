class Qltknh 
  attr_reader :mstk, :ten, :sdtk

  def initialize(mstk,ten,sdtk)
    @mstk = mstk
    @ten = ten
    @sdtk = sdtk
  end

  def naptientk(sotiennap)
    @sdtk+=sotiennap
    puts "Bạn vừa nạp vào #{sotiennap} tiền . Số dư tài khoản bây giờ là #{@sdtk}"
  end

  def ruttien(sotienrut)
    @sdtk-=sotienrut
    puts "Bạn vừa rút #{sotienrut} tiền . Số dư tài khoản bây giờ là #{@sdtk}"
  end

  def saoke(nhapmstk, nhapten)
    if (@mstk == nhapmstk) && (@ten == nhapten)
      puts "Tên tài khoản của bạn là #{@ten} . Số dư tài khoản bây giờ là #{@sdtk}"
    else
      puts "Mã số tài khoản hoặc tên khoản không chính xác"
    end
  end

  def capnhattenchuthe(nhapmstk,nhaptentkcu,nhaptentkmoi)
    if (@mstk == nhapmstk) && (@ten == nhaptentkcu)
      @ten = nhaptentkmoi
      puts "Tên tài khoản mới của bạn là #{@ten} . Số dư tài khoản bây giờ là #{@sdtk}"
    else
      puts "Mã số tài khoản hoặc tên khoản cũ không chính xác"
    end
  end

  def menu()
    puts "|-------------MENU-------------|"
    puts "|1/ Nạp tiền tài khoản         |"
    puts "|2/ Rút tiền tài khoản         |"
    puts "|3/ Sao kê tài khoản           |"
    puts "|4/ Cập nhật tên chủ tài khoản |"
    puts "|------------------------------|"

    while true
      option = gets.chomp

      if option.to_i == 1
        print "Nhập số tiền cần nạp: "
        sotiennap = gets.chomp
        naptientk(sotiennap.to_i)
        break
      elsif option.to_i == 2
        print "Nhập số tiền cần rút: "
        sotienrut = gets.chomp
        ruttien(sotienrut.to_i)
        break
      elsif option.to_i == 3
        print "Nhập mã số tài khoản: "
        nhapmstk = gets.chomp
        print "Nhập tên tài khoản:"
        nhapten = gets.chomp
        saoke(nhapmstk.to_i,nhapten)
        break
      elsif option.to_i == 4
        print "Nhập mã số tài khoản: "
        nhapmstk =gets.chomp
        print "Nhập tên tài khoản cũ: "
        nhaptentkcu = gets.chomp
        print "Nhập tên tài khoản mới: "
        nhaptentkmoi = gets.chomp
        capnhattenchuthe(nhapmstk.to_i,nhaptentkcu,nhaptentkmoi)
        break
      else 
        puts "Vui lòng nhập giá trị là 1 hoặc 2 hoặc 3 hoặc 4"
      end 
    end
  end
end

class Duy < Qltknh
  def initialize(mstk = 1111, ten = "Duy", sdtk = 50)
    super(mstk, ten, sdtk)
  end
end

class Minh < Qltknh
  def initialize(mstk = 2222, ten = "Minh",sdtk = 30)
    super(mstk, ten, sdtk)
  end
end

class Phuoc < Qltknh
  def initialize(mstk = 3333, ten = "Phuoc",sdtk = 40)
    super(mstk, ten, sdtk)
  end
end

class Tri < Qltknh
  def initialize(mstk = 4444, ten = "Tri",sdtk = 30)
    super(mstk, ten, sdtk)
  end
end

duy_account = Duy.new
duy_account.menu