# tại sao lại phải có module trong khi đã có tính thừa kế trong class
# --> bởi vì làm như vậy sẽ làm bự class ra, module có mục đích để rút ngắn code của Class khi tất cả các 
# class có chung 1 method
require './Creammodul'

include Cream

class Cookie
    include Cream #instance method --> phải gọi object rồi mới gọi được method --> method của 1 đối tượng class
  end
  