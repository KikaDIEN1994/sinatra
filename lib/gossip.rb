require 'csv'

class Gossip
    def initialize
        attr_accessor :author, :content
    end

    def save
        CSV.open("./db/gossip.csv", "ab") do |csv|
             csv << ["Mon super auteur", "Ma super description"]
        end
    end
end