require 'ruby_xml_nfe/vol'

module RubyXmlNfe
  class Transp
    attr_reader :xml, :modFrete, :vol_params

    def initialize(xml, params)
      @xml = xml
      @modFrete = params[:modFrete]
      @vol_params = params[:vol]
    end

    def build
      xml.transp do
        xml.modFrete modFrete
        ipi_int = RubyXmlNfe::Vol.new(xml, vol_params)
        ipi_int.build
      end
    end
  end
end
