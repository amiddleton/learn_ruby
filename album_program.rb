require ("./BeastieBoys.rb")
bb=BeastieBoys.new
chr=bb.studio_albums.sort_by {|year|}
loop do
  $stdout.write("Choose Albums or enter a year: ")
  @answer = $stdin.gets.chomp
  chr2=bb.albums_year[@answer]
  break if @answer =="quit"

  if @answer == "Albums"
    puts(chr)
  elsif @answer.match(/^\d+$/)
    puts(chr2)
  elsif @answer == "first"
    puts bb.to_array[1]
  elsif @answer == "last"
    puts bb.to_array.last
  elsif @answer == "count"
    a =bb.to_array.count
    puts (a/2)
  else $stdout.write("There are no albums for that year: ")
  end
end
