def play_game
  steps = 0

  while steps < 10
    dice = rand(1..6)
    case dice
    when 5, 6
      steps += 1
      puts "Vous avancez d'une marche, vous êtes maintenant sur la marche #{steps}."
    when 1
      steps -= 1 if steps > 0
      puts "Vous descendez d'une marche, vous êtes maintenant sur la marche #{steps}."
    else
      puts "Rien ne se passe, vous restez sur la marche #{steps}."
    end
  end

  puts "Félicitations ! Vous avez atteint la 10ème marche."
end

play_game

def average_finish_time
  total_turns = 0
  simulations = 100

  simulations.times do
    steps = 0
    turns = 0

    while steps < 10
      dice = rand(1..6)
      case dice
      when 5, 6
        steps += 1
      when 1
        steps -= 1 if steps > 0
      end
      turns += 1
    end

    total_turns += turns
  end

  average_turns = total_turns / simulations
  puts "Le nombre moyen de tours pour atteindre la 10ème marche est #{average_turns}."
end

average_finish_time
