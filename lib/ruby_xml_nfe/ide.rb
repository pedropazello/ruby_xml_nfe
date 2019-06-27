require 'nokogiri'

module RubyXmlNfe
  class Ide
    attr_reader :xml, :cUF, :cNF, :natOp, :mod, :serie, :nNF, :dhEmi, :dhSaiEnt, :tpNF, :idDest,
    :cMunFG, :tpImp, :tpEmis, :cDV, :tpAmb, :finNFe, :indFinal, :indPres, :procEmi, :verProc

    def initialize(xml, params)
      @xml = xml
      @cUF = params[:cUF]
      @cNF = params[:cNF]
      @natOp = params[:natOp]
      @mod = params[:mod]
      @serie = params[:serie]
      @nNF = params[:nNF]
      @dhEmi = params[:dhEmi]
      @dhSaiEnt = params[:dhSaiEnt]
      @tpNF = params[:tpNF]
      @idDest = params[:idDest]
      @cMunFG = params[:cMunFG]
      @tpImp = params[:tpImp]
      @tpEmis = params[:tpEmis]
      @cDV = params[:cDV]
      @tpAmb = params[:tpAmb]
      @finNFe = params[:finNFe]
      @indFinal = params[:indFinal]
      @indPres = params[:indPres]
      @procEmi = params[:procEmi]
      @verProc = params[:verProc]
    end

    def build
      xml.ide do
        xml.cUF cUF
        xml.cNF cNF
        xml.natOp natOp
        xml.mod mod
        xml.serie serie
        xml.nNF nNF
        xml.dhEmi dhEmi
        xml.dhSaiEnt dhSaiEnt
        xml.tpNF tpNF
        xml.idDest idDest
        xml.cMunFG cMunFG
        xml.tpImp tpImp
        xml.tpEmis tpEmis
        xml.cDV cDV
        xml.tpAmb tpAmb
        xml.finNFe finNFe
        xml.indFinal indFinal
        xml.indPres indPres
        xml.procEmi procEmi
        xml.verProc verProc
      end
    end
  end
end
