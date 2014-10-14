module RubyTCC
	module Helper 
		class << self
			def to_period(time)
				time = Time.parse(time).to_i
				(time - Time.parse("00:00").to_i) / (15 * 60)
			end

			def camelize underscored_word
		      underscored_word.to_s.gsub(/(?:^|_)(.)/) { $1.upcase }
		    end
		end
	end
end