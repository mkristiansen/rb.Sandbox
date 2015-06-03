movies =
{
    "Untouchables" => "4"
}

movies["Despicable Me".to_sym] = 0

puts "Give me some input"
choice = gets.chomp

case choice
when "add"
    puts "Enter Movie Title"
    title = gets.chomp
    
    if movies[title.to_sym].nil? 
        puts "Enter Movie Rating"
        rating = gets.chomp

        movies[title.to_sym] = rating.to_i
    else puts "Movie is already in the database"
    end
when "update"
    puts "Enter Movie Title"
    title = gets.chomp
    
    if movies[title.to_sym].nil?
        puts "This movie does not exist in the database"
    else    
        puts "Enter Movie Rating"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end
    
when "display"
    movies.each do |m,r|
       puts "#{m}: #{r}" 
    end
when "delete"
    puts "Enter Movie Title"
    title = gets.chomp
    
    if movies[title.to_sym].nil?
        puts "This movie does not exist in the database"
    else
        movies[title.to_sym].delete
    end

else
    puts "Error!"
end