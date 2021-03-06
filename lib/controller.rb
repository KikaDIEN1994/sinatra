require 'gossip'

class ApplicationController < Sinatra::Base # classe ApplicationController qui hérite de Sinatra
  get '/' do # Chemin d'acces vers l'index
    erb :index #affiche le contenu de index
  end

  get '/gossips/new/' do # chemin d'acces vers gossips\new
    erb :new_gossip # affiche le contenu et new_gossip
  end

  post '/gossips/new/' do
    Gossip.new("#{params["gossip_author"]}", "#{params["gossip_content"]}").save # recupere les valeurs taper dans les potins
  end

=begin
  post '/gossips/new/' do
  puts "Salut, je suis dans le serveur"
  puts "Ceci est le contenu du hash params : #{params}"
  puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans le champ gossip_author : #{params["gossip_author"]}"
  puts "De la bombe, et du coup ça, ça doit être ce que l'utilisateur a passé dans le champ gossip_content : #{params["gossip_content"]}"
  puts "Ça déchire sa mémé, bon allez je m'en vais du serveur, ciao les BGs !"
  end
=end
  post '/gossips/new/' do # redirige la page vers les potins
  # ton super code qui enregistre un gossip en fonction de params
  redirect '/'
end

end
