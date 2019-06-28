require 'ruby_xml_nfe/icms00'

module RubyXmlNfe
  class Icms
    attr_reader :xml, :icms00_params

    def initialize(xml, params)
      @xml = xml
      @icms00_params = params[:ICMS00]
    end

    def build
      xml.ICMS do
        icms00 = RubyXmlNfe::Icms00.new(xml, icms00_params)
        icms00.build
      end
    end
  end
end
