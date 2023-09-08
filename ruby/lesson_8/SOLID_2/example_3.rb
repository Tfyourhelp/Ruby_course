class Printer
  def initialize(data)
    @data = data
  end
  
  def print(formatter: PdfFormatter)
    formatter.new.format(@data)
  end
end

class PdfFormatter
  def format(data)
    #format data to Pdf logic
  end
end

class HtmlFormatter
  def format(data)
    # format data to Html logic
  end
end