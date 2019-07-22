require 'ruby_xml_nfe/cofins_aliq'

module RubyXmlNfe
  class Cofins
    attr_reader :xml, :cofins_aliq_params

    def initialize(xml, params)
      @xml = xml
      @cofins_aliq_params = params[:COFINSAliq]
    end

    def build
      xml.COFINS do
        cofins_aliq = RubyXmlNfe::CofinsAliq.new(xml, cofins_aliq_params)
        cofins_aliq.build
      end
    end
  end
end
