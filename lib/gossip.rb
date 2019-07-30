require 'csv'

class Gossip #Classe gossip

     attr_accessor :author, :content #déclaration dees variable

    def initialize author,content # initialisation des variables
        @author = author
        @content = content
    end

    def save # methode qui fait appel au variable utilisé et qui le déplace dans le CSV notre "base de donnée"
        CSV.open("./db/gossip.csv", "ab") do |csv|
            #csv << ["@author", "@content"]
             csv << ["#{@author}", "#{@content}"]
        end
    end

      def self.all # recupere chacune des lignes du CSV pour les afficher dans un tableau
        all_gossips = []
        CSV.read("./db/gossip.csv").each do |csv_line|
            all_gossips << Gossip.new(csv_line[0], csv_line[1], csv_line[2])
        end
        return all_gossips
    end
end
