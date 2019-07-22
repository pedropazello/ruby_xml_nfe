require 'ruby_xml_nfe/icms_tot'

module RubyXmlNfe
  class Total
    attr_reader :xml, :icms_tot_params

    def initialize(xml, params)
      @xml = xml
      @icms_tot_params = params[:ICMSTot]
    end

    def build
      xml.total do
        ipi_int = RubyXmlNfe::IcmsTot.new(xml, icms_tot_params)
        ipi_int.build
      end
    end
  end
end
