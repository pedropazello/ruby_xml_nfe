require 'ruby_xml_nfe/prod'
require 'ruby_xml_nfe/imposto'

module RubyXmlNfe
  class Items
    attr_reader :xml, :items

    def initialize(xml, items)
      @xml = xml
      @items = items
    end

    def build
      items.map.with_index do |item, index|
        xml.det(nItem: index + 1) do
          prod = RubyXmlNfe::Prod.new(xml, item[:prod])
          prod.build

          imposto = RubyXmlNfe::Imposto.new(xml, item[:imposto])
          imposto.build
        end
      end
    end
  end
end
