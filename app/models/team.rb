class Team < ActiveRecord::Base
	def finzi_score(week)
		if WeeklyStat.where(:season => CURRENT_SEASON, :team_id => self.id, :week => week.to_i).count > 0 #if there exist stats for this week
			if week.to_i > 3 # if more than 3 games played this season 
				stats = WeeklyStat.where(:season => CURRENT_SEASON, :team_id => self.id, :week => week.to_i)[0] # get this week's stats 
				pa = stats.pa
				pf = stats.pf
			else # there are 0-3 games that have been played, so use some of the past season's results
				stats1 = WeeklyStat.where(:season => CURRENT_SEASON-1, :team_id => self.id)[-1] # get most recent weekly stats from LAST SEASON 
				stats2 = WeeklyStat.where(:season => CURRENT_SEASON, :team_id => self.id, :week => week.to_i)[0] # get this week's stats 
				# avg this season's most recent with last season
				pa = (stats1.pa + stats2.pa) /2
				pf = (stats1.pf + stats2.pf) /2
			end
		else # if stats have not been produce for the current week
			if WeeklyStat.where(:season => CURRENT_SEASON, :team_id => self.id).count != 0
				stats = WeeklyStat.where(:season => CURRENT_SEASON, :team_id => self.id)[-1] # get most recent weekly stats from THIS SEASON
			else
				stats = WeeklyStat.where(:season => CURRENT_SEASON-1, :team_id => self.id)[-1] # get most recent weekly stats from LAST SEASON
			end
			pa = stats.pa
			pf = stats.pf
		end
		return ((pa + pf) /2)
	end
end
