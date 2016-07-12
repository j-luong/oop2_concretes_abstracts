class XmlFormatter
  def initialize(string)
    @string = string
  end

  def format
    "<xml>#{@string}</xml>"
  end
end
