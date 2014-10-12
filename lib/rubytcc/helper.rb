module RubyTCC
	module Helper 
		class << self
			def to_period(time)
				time = Time.parse(time).to_i
				(time - Time.parse("00:00").to_i) / (15 * 60)
			end
		end
	end
end