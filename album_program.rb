require ("./BeastieBoys.rb")
bb=BeastieBoys.new
chr=bb.studio_albums.sort
loop do
  $stdout.write("Choose Albums or enter a year: ")
  @answer = $stdin.gets.chomp
  chr2=bb.albums_year[@answer]
  break if @answer =="quit"

  if @answer == "Albums"
    puts(chr)
  elsif @answer.match(/^\d+$/)
    puts(chr2)
  else $stdout.write("Try again: ")
  end
end
