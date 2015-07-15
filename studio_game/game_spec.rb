require_relative 'game'

describe Game do

  before do
    $stdout = StringIO.new
    @game = Game.new("Knuckleheads")
    @rounds = 2

    @initial_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)
  end

  it "w00ts the player if a high number is rolled" do

    allow_any_instance_of(Die).to receive(:roll).and_return(5)

    @game.play(@rounds)

    expect(@player.health).to eq(@initial_health += 15*@rounds)
  end

  it "doesn't the player health if a medium number is rolled" do

    allow_any_instance_of(Die).to receive(:roll).and_return(3)

    @game.play(@rounds)

    expect(@player.health).to eq(@initial_health)
  end

  it "blam the player if a low number is rolled" do

    allow_any_instance_of(Die).to receive(:roll).and_return(1)

    @game.play(@rounds)

    expect(@player.health).to eq(@initial_health -= 10 * @rounds)
  end

end
