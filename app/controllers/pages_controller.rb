require 'json'
require 'net/http'
require 'open-uri'
require 'active_support/core_ext'

class PagesController < ApplicationController
  
  def home
  end

  def createballot
  end

  def ballot

      if params["zip"] == nil || params["zip"].length != 5
         flash[:notice] = "Invalid zipcode"
         redirect_to root_path
      else 

      # if params["zip"] != nil
      #   @zip = params["zip"].to_i
      # end
      
      s = Net::HTTP.get_response(URI.parse("http://api.votesmart.org/Candidates.getByZip?key=80ed23c61d678115ead4c4c5f2a3c055&zip5=#{@zip}")).body
      json = Hash.from_xml(s).to_json
      @candidatelist = JSON.parse(json)
      @candidatelist = @candidatelist["candidateList"]["candidate"]
      
      e = Net::HTTP.get_response(URI.parse("http://api.votesmart.org/Election.getElectionByZip?key=80ed23c61d678115ead4c4c5f2a3c055&zip5=#{@zip}")).body
      json = Hash.from_xml(e).to_json
      @elections = JSON.parse(json)
      @elections = @elections["elections"]["election"]
      end
 end
  def candidatebio
     @candidate_id = params[:candidate_id]
      b = Net::HTTP.get_response(URI.parse("http://api.votesmart.org/CandidateBio.getBio?key=80ed23c61d678115ead4c4c5f2a3c055&candidateId=#{@candidate_id}")).body
      json = Hash.from_xml(b).to_json
      @candidatebio = JSON.parse(json)
      @candidatebio = @candidatebio["bio"]["candidate"]
  end

  def resources
  end

  def about
  end

end
