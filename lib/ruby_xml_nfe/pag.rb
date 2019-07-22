require 'ruby_xml_nfe/dat_pag'

module RubyXmlNfe
  class Pag
    attr_reader :xml, :dat_pag_params

    def initialize(xml, params)
      @xml = xml
      @dat_pag_params = params[:detPag]
    end

    def build
      xml.pag do
        det_pag = RubyXmlNfe::DatPag.new(xml, dat_pag_params)
        det_pag.build
      end
    end
  end
end
