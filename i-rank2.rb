require 'oepn-uri'

Categories = %w(xxxx xxxx xxxx xxxx
xxxx xxxx xxxx xxxx
xxxx xxxx xxxx xxxx)
PopIdes = %w(xx xx xx xx xx xx)

BASE_URL = 'https://itunes.apple.com/WebObjects/MZStore.woa/wa/view/Top?'
USER_AGENT = 
	"Itunes//11.2.1 (Maccintosh; OS X 10.9.2)AppleWebKit/537.74.9\r\n"
STORE = '143462-9'

def getUrl(category,popid)
  return BASE_URL+"genreId="+category+"&popId="+popId
end

def getRank(url)
  i = 0
  open(url,
      "User-Agent" => USER_AGENT,
      "X-Apple-Store-Front" => STORE) do |f|
	  f.each do |line|
	    next if !line.match(/Buy.*salevaleAdamId=(\d+)/)
				i += 1
				line.match(/itemName="[^"]+"/)
				puts i.to_s + ": " + $1
	  end
end

Categories.each {|category|
  PopIdes.each {|popId|
    puts "category=#{category}, popID=#{popId}"
    url = getUrl(category, popId)
    getRanks(url)
  }
}
