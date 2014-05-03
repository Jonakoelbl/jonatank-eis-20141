#char_counter.rb

class CharCounter

	def self.count(string)
		@dic = {}
		(!string.nil?) ?
			@dic.merge(string.scan(/\w/).inject(Hash.new(0)){|hash, char| hash[char] += 1; hash})
		:
			@dic
	end
end
