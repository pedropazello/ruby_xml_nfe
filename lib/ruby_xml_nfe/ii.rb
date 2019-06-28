module RubyXmlNfe
  class Ii
    attr_reader :xml

    def initialize(xml, params)
      @xml = xml
    end

    def build
      xml.II do
        xml.vBC vBC
        xml.vDespAdu vDespAdu
        xml.vII vII
        xml.vIOF vIOF
        # <II>
        #   <vBC>0.00</vBC>
        #   <vDespAdu>0.00</vDespAdu>
        #   <vII>0.00</vII>
        #   <vIOF>0.00</vIOF>
      end
    end
  end
end
