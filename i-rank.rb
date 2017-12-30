require 'open-uri'

url= "https://iteunes.apple.com/WebObjects/
MZStore.woa/wa/viewTop?genreId=6015&id=25177&popId=47"

urser_agent-
 "iTunes/11.2.1 (Macintosh; OS X 10.9.2)AppleWebKit/537.74.9\r\n"
puts open(url, "User-Agent" => user_agent).read

