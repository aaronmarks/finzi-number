class Game < ActiveRecord::Base
	def team_1
		return Team.find(self.team_1_id)
	end

	def team_2
		return Team.find(self.team_2_id)
	end

	def finzi_number
		t1_score = self.team_1.finzi_score(self.week)
		t2_score = self.team_2.finzi_score(self.week) + 3 #add three for home-team advantage
		line = 0 # TD: IMPLEMENT GETTING THE LINE return 
		return t1_score - t2_score
	end

	def disp_line
		return self.line ? self.line : 999
	end
end
