require 'ruby_xml_nfe/pis_aliq'

module RubyXmlNfe
  class Pis
    attr_reader :xml, :pis_aliq_params

    def initialize(xml, params)
      @xml = xml
      @pis_aliq_params = params[:PISAliq]
    end

    def build
      xml.PIS do
        pis_aliq = RubyXmlNfe::PisAliq.new(xml, pis_aliq_params)
        pis_aliq.build
      end
    end
  end
end
