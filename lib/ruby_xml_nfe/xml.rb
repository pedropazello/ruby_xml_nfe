require 'nokogiri'
require 'ruby_xml_nfe/ide'
require 'ruby_xml_nfe/emit'
require 'ruby_xml_nfe/dest'
require 'ruby_xml_nfe/aut_xml'
require 'ruby_xml_nfe/items'
require 'ruby_xml_nfe/total'

module RubyXmlNfe
  class Xml
    attr_reader :chNFe, :ide_params, :emit_params, :dest_params, :aut_xml_params,
      :items_params, :total_params

    def initialize(name, params)
      @name = name
      @chNFe = params[:chNFe]
      @ide_params = params[:ide]
      @emit_params = params[:emit]
      @dest_params = params[:dest]
      @aut_xml_params = params[:autXML]
      @items_params = params[:items]
      @total_params = params[:total]
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
          end
        end
      end

      builder.to_xml
    end
  end
end
