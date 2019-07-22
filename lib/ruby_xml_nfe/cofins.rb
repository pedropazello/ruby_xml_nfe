require 'ruby_xml_nfe/cofins_aliq'
require 'ruby_xml_nfe/cofins_outr'

module RubyXmlNfe
  class Cofins
    attr_reader :xml, :cofins_aliq_params, :cofins_outr_params

    def initialize(xml, params)
      @xml = xml
      @cofins_aliq_params = params[:COFINSAliq]
      @cofins_outr_params = params[:COFINSOutr]
    end

    def build
      xml.COFINS do
        if cofins_aliq_params
          cofins_aliq = RubyXmlNfe::CofinsAliq.new(xml, cofins_aliq_params)
          cofins_aliq.build
        end

        if cofins_outr_params
          cofins_outr = RubyXmlNfe::CofinsOutr.new(xml, cofins_outr_params)
          cofins_outr.build
        end
      end
    end
  end
end
