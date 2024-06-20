def signup
  puts "Définissez un mot de passe :"
  print "> "
  gets.chomp
end

def login(password)
  loop do
    puts "Entrez votre mot de passe :"
    print "> "
    input = gets.chomp
    break if input == password
    puts "Mot de passe incorrect, réessayez."
  end
end

def welcome_screen
  puts "Bienvenue dans votre zone secrète !"
  puts "Voici quelques informations top secrètes..."
end

def perform
  password = signup
  login(password)
  welcome_screen
end

perform
