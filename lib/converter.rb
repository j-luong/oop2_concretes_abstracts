require 'html_formatter'
require 'xml_formatter'
require 'text_formatter'
require 'json_formatter'

class Converter
  FORMATTER = {text: TextFormatter, html: HtmlFormatter, json: JsonFormatter, xml: XmlFormatter}
  def initialize(string)
    @string = string
  end

  def convert_to(format)
    raise "Unrecognised type" unless FORMATTER.has_key?(format)
    FORMATTER[format].new(@string).format
  end
end
