require 'ruby_xml_nfe/icms'
require 'ruby_xml_nfe/ipi'
require 'ruby_xml_nfe/ii'
require 'ruby_xml_nfe/pis'
require 'ruby_xml_nfe/cofins'

module RubyXmlNfe
  class Imposto
    attr_reader :xml, :icms_params, :ipi_params, :ii_params, :pis_params, :cofins_params

    def initialize(xml, params)
      @xml = xml
      @icms_params = params[:ICMS]
      @ipi_params = params[:IPI]
      @ii_params = params[:II]
      @pis_params = params[:PIS]
      @cofins_params = params[:COFINS]
    end

    def build
      xml.imposto do
        icms = RubyXmlNfe::Icms.new(xml, icms_params)
        icms.build

        if ipi_params
          ipi = RubyXmlNfe::Ipi.new(xml, ipi_params)
          ipi.build
        end

        if ii_params
          ii = RubyXmlNfe::Ii.new(xml, ii_params)
          ii.build
        end

        if pis_params
          pis = RubyXmlNfe::Pis.new(xml, pis_params)
          pis.build
        end

        if cofins_params
          cofins = RubyXmlNfe::Cofins.new(xml, cofins_params)
          cofins.build
        end
      end
    end
  end
end
