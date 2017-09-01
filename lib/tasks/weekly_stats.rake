namespace :weekly_stats do
  desc "TODO"
  task weekly_update: :environment do
	require 'rubygems'
	require 'nokogiri'
	require 'open-uri'
	URL_TEXT="https://www.pro-football-reference.com/years/"+CURRENT_SEASON.to_s
		#download the stats
		page = Nokogiri::HTML(open(URL_TEXT))
		#parse the stats
		tables = page.css('.stats_table').css('tbody') #get AFC and NFC stats tables
		tables.each do |t| # for each table
			t.css("tr").each do |r| #for each row (i.e., each team)
				rtds = r.css("td")
				next if ! rtds[4] #skip the header rows for each division, b/c they don't correspond to a team
				num_games = rtds[0].text.to_i + rtds[1].text.to_i + rtds[2].text.to_i #get total number games
				total_pf = rtds[4].text.to_i #get total PF
				total_pa = rtds[5].text.to_i # get total PA
				avg_pa = total_pa / num_games
				avg_pf = total_pf / num_games
				
				#figure out team id
				the_name = r.css("th")[0].text #get the team name
				name_words = the_name.split(" ")
				the_team_id = ""
				fword = ""

				name_words.each do |word| #check each word to see if there's a team record for that word, e.g. 49ers
					fword = word.downcase.tr("*", "").tr("+", "")
					fword = fword.slice(0,1).capitalize + fword.slice(1..-1)
					if Team.where(:name => fword).count != 0
						the_team_id = Team.where(:name => fword)[0].id
					end
				end

				WeeklyStat.new(:team_id => the_team_id, :season => 2016, :week => 16, :pa => avg_pa, :pf => avg_pf).save!
			end
		end
  end

end
