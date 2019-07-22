module RubyXmlNfe
  class Ii
    attr_reader :xml, :vBC, :vDespAdu, :vII, :vIOF

    def initialize(xml, params)
      @xml = xml
      @vBC = params[:vBC]
      @vDespAdu = params[:vDespAdu]
      @vII = params[:vII]
      @vIOF = params[:vIOF]
    end

    def build
      xml.II do
        xml.vBC vBC
        xml.vDespAdu vDespAdu
        xml.vII vII
        xml.vIOF vIOF
      end
    end
  end
end
