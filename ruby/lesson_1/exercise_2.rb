puts "Bài tập 1"

def kiemtraso(input)
    begin
      float_value = Float(input) # chuyển được Float(input) thì giá trị nhập vào là số , không chuyển được thì giá trị nhập vào không phải là số
      return true
    rescue ArgumentError, TypeError
      return false
    end
end

def menu_1()
    puts "----------------------------"
    puts "|1/ Phép cộng              |"
    puts "----------------------------"
    puts "|2/ Phép trừ               |"
    puts "----------------------------"
    puts "|3/ Phép nhân              |"
    puts "----------------------------"
    puts "|4/ Phép chia              |"
    puts "----------------------------"
    puts "|5/ Chọn lại số một và hai |"
    puts "----------------------------"
    puts "|6/ Thoát                  |"
    puts "----------------------------"
end

while true
    while true # kiểm tra giá trị nhập có phải là số hay không
        print "Nhập số thứ nhất: "
        a = gets.chomp
        check = kiemtraso(a)
        if check == true
            break
        else
            puts "Số thứ nhất phải là số ,không phải một chuỗi. Nhập lại số thứ nhất"
            next
        end
    end

    while true
        print "Nhập số thứ hai: "
        b = gets.chomp
        check = kiemtraso(b)
        if check == true
            break
        else
            puts "Số thứ hai phải là số ,không phải một chuỗi. Nhập lại số thứ hai"
            next
        end
    end

    puts "Nhập lựa chọn 1 hoặc 2 hoặc 3 hoặc 4 hoặc 5: "
    menu_1()
    option = gets.chomp

    while true
        if option.to_i == 1
            puts "Số thứ nhất + số thứ hai = #{(a.to_f + b.to_f).to_s}"

            menu_1()
            print "Chọn option khác: "
            option = gets.chomp

        elsif option.to_i == 2
            puts "Số thứ nhất - số thứ hai = #{(a.to_f - b.to_f).to_s}"
            
            menu_1()
            print "Chọn option khác: "
            option = gets.chomp

        elsif option.to_i == 3
            puts "Số thứ nhất * số thứ hai: #{(a.to_f * b.to_f).to_s}"

            menu_1()
            print "Chọn option khác: "
            option = gets.chomp
        
        elsif option.to_i == 4
            if b.to_i != 0
                puts "Số thứ nhất / số thứ hai: #{a.to_f / b.to_f}"
            else
                puts "Không thể chia cho 0"
            end

            menu_1()
            print "Chọn option khác: "
            option = gets.chomp
        
        elsif option.to_i == 5
            break
        
        elsif option.to_i == 6
            break

        else 
            print "Số được nhập phải là 1 hoặc 2 hoặc 3 hoặc 4 hoặc 5: "
            option = gets.chomp
        end
    end

    if option.to_i == 6
        break
    end    
end

puts "Bài tập 2"

def menu_2()
    puts "----------------------------"
    puts "|1/ Diện tích hình chữ nhật|"
    puts "----------------------------"
    puts "|2/ Diện tích hình tròn    |"
    puts "----------------------------"
    puts "|3/ Thoát                  |"
    puts "----------------------------"
end

puts "Nhập lựa chọn 1 hoặc 2 hoặc 3: "
menu_2()
option = gets.chomp


while true
    if option.to_i == 1
        while true
            print "Nhập chiều dài : "
            a = gets.chomp
            check = kiemtraso(a)
            if check == true
                break
            else
                puts "Chiều dài phải là một số ,không phải một chuỗi. Nhập lại chiều dài"
                next
            end
        end

        while true
            print "Nhập chiều rộng: "
            b = gets.chomp
            check = kiemtraso(b)
            if check == true
                break
            else
                puts 'Chiều rộng phải là một số ,không phải một chuỗi. Nhập lại chiều rộng'
                next
            end
        end

        puts "Diện tích hình chữ nhật là : #{(a.to_f * b.to_f).to_s}"
        
        menu_2()
        print "Chọn option khác: "
        option = gets.chomp

    elsif option.to_i == 2
        while true
            print "Nhập bán kính : "
            r = gets.chomp
            check = kiemtraso(r)
            if check == true
                break
            else
                "Bán kính phải là một số ,không phải một chuỗi. Nhập lại bán kính"
                next
            end
        end

        puts "Diện tích hình tròn là : #{(3.14 * (r.to_f) * (r.to_f)).to_s}"
        menu_2()
        print "Chọn option khác: "
        option = gets.chomp

    elsif option.to_i == 3
        break

    else 
        print "Số được nhập phải là một hoặc hai hoặc ba : "
        option = gets.chomp
    end
end