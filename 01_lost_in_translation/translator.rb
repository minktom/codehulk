class Translator

  attr_reader :map

  def initialize(message, result)
    @map = Hash[message.chars.zip(result.chars)]
  end

  def translate(message)
    message.chars.map { |c| @map[c] }.join
  end

end

# message1 = "wvEr2JmJUs2JRr:7obSAF9W8I?mwOB\n0s2E:7-f/-G/N-.f7jN:Mi:.CDfGX7tn!\n\nys6vs6h7ys6vs6h7KEH4Ea2Jr17JddEvJs2E7saaJa2srUE,7RlExh73sa2sxvah7ys6DDD"
# result1  = "Identification: pEY-z?blkhfISH\nDate: 07/08/2057 12:34:56.789 CGT\n\nMayday! Mayday! Requesting immediate assistance, over! Bastards! May..."
# message2 = "wvEr2JmJUs2JRr:7a1AJvvHvAmRRWsxWsFAvJvAJAaoE88A2?s2AxJ1?29\n0s2E:7-f/-G/N-.f7jN:MC:ifDCGN7tn!\n\n0Esx7bsx2?8Jr1a,\nSR47sxE7?ExEW67rR2JmJEv72?s27s8876R4x7WsaE7sxE7WE8Rr172R74aD\n\nSR4xa7aJrUExE86,\n!?E7OosUE7B48Ia"
# t = Translator.new(message1, result1)
# puts t.translate(message2)
