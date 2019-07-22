require 'nokogiri'
require 'ruby_xml_nfe/ide'
require 'ruby_xml_nfe/emit'
require 'ruby_xml_nfe/dest'
require 'ruby_xml_nfe/aut_xml'
require 'ruby_xml_nfe/items'
require 'ruby_xml_nfe/total'
require 'ruby_xml_nfe/transp'
require 'ruby_xml_nfe/cobr'
require 'ruby_xml_nfe/pag'
require 'ruby_xml_nfe/inf_adic'

module RubyXmlNfe
  class Xml
    attr_reader :chNFe, :ide_params, :emit_params, :dest_params, :aut_xml_params,
      :items_params, :total_params, :transp_params, :cobr_params, :pag_params,
      :inf_adc_params

    def initialize(name, params)
      @name = name
      @chNFe = params[:chNFe]
      @ide_params = params[:ide]
      @emit_params = params[:emit]
      @dest_params = params[:dest]
      @aut_xml_params = params[:autXML]
      @items_params = params[:items]
      @total_params = params[:total]
      @transp_params = params[:transp]
      @cobr_params = params[:cobr]
      @pag_params = params[:pag]
      @inf_adc_params = params[:infAdic]
    end

    def build
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.NFe(xmlns: "http://www.portalfiscal.inf.br/nfe") do
          xml.infNFe(Id: "NFe#{chNFe}", versao: "4.00") do
            ide = RubyXmlNfe::Ide.new(xml, ide_params)
            ide.build

            emit = RubyXmlNfe::Emit.new(xml, emit_params)
            emit.build

            dest = RubyXmlNfe::Dest.new(xml, dest_params)
            dest.build

            aut_xml = RubyXmlNfe::AutXml.new(xml, aut_xml_params)
            aut_xml.build

            items = RubyXmlNfe::Items.new(xml, items_params)
            items.build

            total = RubyXmlNfe::Total.new(xml, total_params)
            total.build

            transp = RubyXmlNfe::Transp.new(xml, transp_params)
            transp.build

            cobr = RubyXmlNfe::Cobr.new(xml, cobr_params)
            cobr.build

            pag = RubyXmlNfe::Pag.new(xml, pag_params)
            pag.build

            inf_adic = RubyXmlNfe::InfAdic.new(xml, inf_adc_params)
            inf_adic.build
          end
        end
      end

      builder.to_xml
    end
  end
end
