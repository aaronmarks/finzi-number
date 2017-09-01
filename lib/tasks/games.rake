namespace :games do
  desc "TODO"
  task add_2017: :environment do
	w3 = ["Rams", "49ers", "Ravens", "Jaguars", "Broncos", "Bills", "Saints", "Panthers", "Steelers", "Bears", "Falcons", "Lions", "Browns", "Colts", "Buccaneers", "Vikings", "Texans", "Patriots", "Dolphins", "Jets", "Giants", "Eagles", "Seahawks", "Titans", "Bengals", "Packers", "Chiefs", "Chargers", "Raiders", "Redskins", "Cowboys", "Cardinals"]
	w4 = ["Bears", "Packers", "Saints", "Dolphins", "Bills", "Falcons", "Steelers", "Ravens", "Bengals", "Browns", "Rams", "Cowboys", "Titans", "Texans", "Lions", "Vikings", "Panthers", "Patriots", "Jaguars", "Jets", "49ers", "Cardinals", "Eagles", "Chargers", "Giants", "Buccaneers", "Raiders", "Broncos", "Colts", "Seahawks", "Redskins", "Chiefs"]
	w5 = ["Patriots", "Buccaneers", "Bills", "Bengals", "Jets", "Browns", "Panthers", "Lions", "49ers", "Colts", "Titans", "Dolphins", "Chargers", "Giants", "Cardinals", "Eagles", "Jaguars", "Steelers", "Seahawks", "Rams", "Ravens", "Raiders", "Packers", "Cowboys", "Chiefs", "Texans", "Vikings", "Bears"]
	w6 = ["Eagles", "Panthers", "Dolphins", "Falcons", "Bears", "Ravens", "Browns", "Texans", "Packers", "Vikings", "Lions", "Saints", "Patriots", "Jets", "49ers", "Redskins", "Buccaneers", "Cardinals", "Rams", "Jaguars", "Steelers", "Chiefs", "Chargers", "Raiders", "Giants", "Broncos", "Colts", "Titans"]
	w7 = ["Chiefs", "Raiders", "Buccaneers", "Bills", "Panthers", "Bears", "Titans", "Browns", "Saints", "Packers", "Jaguars", "Colts", "Cardinals", "Rams", "Jets", "Dolphins", "Ravens", "Vikings", "Bengals", "Steelers", "Cowboys", "49ers", "Broncos", "Chargers", "Seahawks", "Giants", "Falcons", "Patriots", "Redskins", "Eagles"]
	w8 = ["Dolphins", "Ravens", "Vikings", "Browns", "Raiders", "Bills", "Colts", "Bengals", "Chargers", "Patriots", "Bears", "Saints", "Falcons", "Jets", "49ers", "Eagles", "Panthers", "Buccaneers", "Texans", "Seahawks", "Cowboys", "Redskins", "Steelers", "Lions", "Broncos", "Chiefs"]
	w9 = ["Bills", "Jets", "Falcons", "Panthers", "Colts", "Texans", "Bengals", "Jaguars", "Buccaneers", "Saints", "Rams", "Giants", "Broncos", "Eagles", "Ravens", "Titans", "Cardinals", "49ers", "Redskins", "Seahawks", "Chiefs", "Cowboys", "Raiders", "Dolphins", "Lions", "Packers"]
	w10 = ["Seahawks", "Cardinals", "Saints", "Bills", "Packers", "Bears", "Browns", "Lions", "Steelers", "Colts", "Chargers", "Jaguars", "Jets", "Buccaneers", "Bengals", "Titans", "Vikings", "Redskins", "Texans", "Rams", "Cowboys", "Falcons", "Giants", "49ers", "Patriots", "Broncos", "Dolphins", "Panthers"]
	w11 = ["Titans", "Steelers", "Lions", "Bears", "Ravens", "Packers", "Jaguars", "Browns", "Cardinals", "Texans", "Rams", "Vikings", "Redskins", "Saints", "Chiefs", "Giants", "Bills", "Chargers", "Bengals", "Broncos", "Patriots", "Raiders", "Eagles", "Cowboys", "Falcons", "Seahawks"]
	w12 = ["Vikings", "Lions", "Chargers", "Cowboys", "Giants", "Redskins", "Buccaneers", "Falcons", "Browns", "Bengals", "Titans", "Colts", "Bills", "Chiefs", "Dolphins", "Patriots", "Panthers", "Jets", "Bears", "Eagles", "Saints", "Rams", "Seahawks", "49ers", "Jaguars", "Cardinals", "Broncos", "Raiders", "Packers", "Steelers", "Texans", "Ravens"]
	w13 = ["Redskins", "Cowboys", "Vikings", "Falcons", "Lions", "Ravens", "Patriots", "Bills", "49ers", "Bears", "Buccaneers", "Packers", "Colts", "Jaguars", "Broncos", "Dolphins", "Panthers", "Saints", "Chiefs", "Jets", "Texans", "Titans", "Browns", "Chargers", "Rams", "Cardinals", "Giants", "Raiders", "Eagles", "Seahawks", "Steelers", "Bengals"]
	w14 = ["Saints", "Falcons", "Colts", "Bills", "Vikings", "Panthers", "Bears", "Bengals", "Packers", "Browns", "49ers", "Texans", "Seahawks", "Jaguars", "Raiders", "Chiefs", "Lions", "Buccaneers", "Titans", "Cardinals", "Jets", "Broncos", "Redskins", "Chargers", "Eagles", "Rams", "Cowboys", "Giants", "Ravens", "Steelers", "Patriots", "Dolphins"]
	w15 = ["Broncos", "Colts", "Bears", "Lions", "Chargers", "Chiefs", "Dolphins", "Bills", "Packers", "Panthers", "Ravens", "Browns", "Texans", "Jaguars", "Bengals", "Vikings", "Jets", "Saints", "Eagles", "Giants", "Cardinals", "Redskins", "Rams", "Seahawks", "Patriots", "Steelers", "Titans", "49ers", "Cowboys", "Raiders", "Falcons", "Buccaneers"]
	w16 = ["Colts", "Ravens", "Vikings", "Packers", "Buccaneers", "Panthers", "Browns", "Bears", "Lions", "Bengals", "Dolphins", "Chiefs", "Bills", "Patriots", "Falcons", "Saints", "Chargers", "Jets", "Rams", "Titans", "Broncos", "Redskins", "Jaguars", "49ers", "Giants", "Cardinals", "Seahawks", "Cowboys", "Steelers", "Texans", "Raiders", "Eagles"]
	w17 = ["Panthers", "Falcons", "Bengals", "Ravens", "Packers", "Lions", "Texans", "Colts", "Bills", "Dolphins", "Bears", "Vikings", "Jets", "Patriots", "Redskins", "Giants", "Cowboys", "Eagles", "Browns", "Steelers", "Saints", "Buccaneers", "Jaguars", "Titans", "Chiefs", "Broncos", "Raiders", "Chargers", "49ers", "Rams", "Cardinals", "Seahawks"]
	weeks = []
	weeks = weeks.push(w3, w4, w5, w6, w7, w8, w9, w10, w11, w12, w13, w14, w15, w16, w17)

	weeks.to_enum.with_index(3).each do |week, j|
		week.each_with_index do |t, i|
			if (i % 2) == 0
				Game.new(:season => 2017, :week => j, :team_1_id => Team.where(:name => t)[0].id, :team_2_id => Team.where(:name => week[i+1])[0].id).save!
			end
		end
	end
  end
end
