require 'ruby_xml_nfe/pis_aliq'
require 'ruby_xml_nfe/pis_outr'

module RubyXmlNfe
  class Pis
    attr_reader :xml, :pis_aliq_params, :pis_outr_params

    def initialize(xml, params)
      @xml = xml
      @pis_aliq_params = params[:PISAliq]
      @pis_outr_params = params[:PISOutr]
    end

    def build
      xml.PIS do
        if pis_aliq_params
          pis_aliq = RubyXmlNfe::PisAliq.new(xml, pis_aliq_params)
          pis_aliq.build
        end

        if pis_outr_params
          pis_outr = RubyXmlNfe::PisOutr.new(xml, pis_outr_params)
          pis_outr.build
        end
      end
    end
  end
end
