$LOAD_PATH.push('../mjai/lib')

require 'mjai/tcp_client_game.rb'

$dllname = "MaujongPlugin/%s.dll" % ARGV[0]
require './wrapper_player.rb'

player = TransMaujong::WrapperPlayer.new

game = Mjai::TCPClientGame.new({
  :player => player,
  :url    => "mjsonp://mjai.hocha.org:11600/default",
  :name   => player.name
})

game.play()
