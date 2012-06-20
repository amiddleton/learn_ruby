require ("./BeastieBoys.rb")
r = BeastieBoys.new

loop do
  $stdout.write("Beastie Boys Albums (Type 'albums' for all or enter a
year):")
  @input = $stdin.gets.chomp

  break if @input == "quit"
  if @input == "albums"
    puts(r.to_array)
  elsif @input == "first"
    puts(r.to_array[1])
  elsif @input == "last"
    puts(r.to_array.last)
  elsif @input == "count"
    a = r.to_array.count
    puts(a/2)
  elsif r.show_year(@input)
    puts(r.album_list.fetch(@input))
  elsif @input == "missing"
    puts(r.no_album)
  else
    puts("No albums that year")
  end
end

##############################################################################

#Below is my original code.  It worked for albums and years, but not for the
#array items.


#require ("./BeastieBoys.rb")
#bb=BeastieBoys.new
#chr=bb.studio_albums.sort_by {|year|}
#loop do
 # $stdout.write("Choose Albums or enter a year: ")
 # @answer = $stdin.gets.chomp
  #chr2=bb.albums_year[@answer]
  #chr3=bb.missing_years
  #break if @answer =="quit"

  #if @answer == "Albums"
    #puts(chr)
  #elsif @answer.match(/^\d+$/)
    #puts(chr2)
  #elsif @answer == "first"
    #puts bb.to_studio_albums[0]
   #puts bb.to_array[1]
  #elsif @answer == "last"
    #puts bb.to_array.last
  #elsif @answer == "count"
    #a=bb.to_array.count
    #puts (a/2)
  #elsif @answer == "missing"
    #puts(chr3)
  #else $stdout.write("There are no albums for that year: ")
  #end
#end

