def half_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  etages = gets.chomp.to_i

  puts "Voici la pyramide :"
  1.upto(etages) do |i|
    puts " " * (etages - i) + "#" * i
  end
end

half_pyramid

def full_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> "
  etages = gets.chomp.to_i

  puts "Voici la pyramide :"
  1.upto(etages) do |i|
    puts " " * (etages - i) + "#" * (2 * i - 1)
  end
end

full_pyramid

def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (Choisis un nombre impair)"
  print "> "
  etages = gets.chomp.to_i

  if etages % 2 == 0
    puts "Le nombre d'étages doit être impair !"
    return
  end

  mid = (etages / 2) + 1

  1.upto(mid) do |i|
    puts " " * (mid - i) + "#" * (2 * i - 1)
  end

  (mid - 1).downto(1) do |i|
    puts " " * (mid - i) + "#" * (2 * i - 1)
  end
end

wtf_pyramid
