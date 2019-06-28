require 'ruby_xml_nfe/ipi_int'

module RubyXmlNfe
  class Ipi
    attr_reader :xml, :cEnq, :ipi_int_params
    def initialize(xml, params)
      @xml = xml
      @cEnq = params[:cEnq]
      @ipi_int_params = params[:IPINT]
    end

    def build
      xml.IPI do
        xml.cEnq cEnq
        ipi_int = RubyXmlNfe::IpiInt.new(xml, ipi_int_params)
        ipi_int.build
      end
    end
  end
end
