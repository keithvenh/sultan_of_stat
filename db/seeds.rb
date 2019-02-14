require 'csv'

file = "#{Rails.root}/lib/assets/seeds/"

CSV.foreach("#{file}baseballdatabank/core/People.csv", headers: true) do |row|
  date = row['finalGame']
  if row['finalGame'] == nil || ['2016', '2017', '2018'].include?(date[0..3])
    Player.create(
      player_code: row['playerID'],
      first_name: row['nameFirst'],
      last_name: row['nameLast'],
      bats: row['bats'],
      throws: row['throws']
    )
  end
end

CSV.foreach("#{file}baseballdatabank/core/TeamsFranchises.csv", headers: true) do |row|
  active = false if row['active'] == "N"
  active = true if row['active'] == "Y"
  Franchise.create(
    franchise_code: row['franchID'],
    franchise_name: row['franchName'],
    active: active,
    franchise_assoc: row['NAassoc']
  )
end

CSV.foreach("#{file}baseballdatabank/core/Teams.csv", headers: true) do |row|
  franchise = Franchise.find_by(franchise_code: row['franchID'])
  Team.create(
    year: row['yearID'],
    team_code: row['teamID'],
    franchise: franchise,
    w: row['W'],
    l: row['L'],
    name: row['name'],
    park: row['park'],
    bpf: row['BPF'],
    ppf: row['PPF']
  )
end

CSV.foreach("#{file}baseballdatabank/core/Batting.csv", headers: true) do |row|
  if row['yearID'] == '2016'
    player = Player.find_by(player_code: row['playerID'])
    team = Team.find_by(team_code: row['teamID'], year: 2016)
    BattingRecord.create(
      player: player,
      year: row['yearID'],
      stint: row['stint'],
      team: team,
      games: row['G'],
      ab: row['AB'],
      r: row['R'],
      h: row['H'],
      d: row['2B'],
      t: row['3B'],
      hr: row['HR'],
      rbi: row['RBI'],
      sb: row['SB'],
      cs: row['CS'],
      bb: row['BB'],
      so: row['SO'],
      ibb: row['IBB'],
      hbp: row['HBP'],
      sac: row['SH'],
      sf: row['SF'],
      gidp: row['GIDP']
    )
  end
end

CSV.foreach("#{file}baseballdatabank/core/Pitching.csv", headers: true) do |row|
  if row['yearID'] == '2016'
    player = Player.find_by(player_code: row['playerID'])
    team = Team.find_by(team_code: row['teamID'], year: 2016)
    PitchingRecord.create(
      player: player,
      year: row['yearID'],
      stint: row['stint'],
      team: team,
      w: row['W'],
      l: row['L'],
      games: row['G'],
      gs: row['GS'],
      cg: row['CG'],
      sho: row['SHO'],
      sv: row['SV'],
      outs: row['IPOuts'],
      h: row['H'],
      er: row['ER'],
      hr: row['HR'],
      bb: row['BB'],
      so: row['SO'],
      baa: row['BAOpp'],
      era: row['ERA'],
      ibb: row['IBB'],
      wp: row['WP'],
      hbp: row['HBP'],
      bk: row['BK'],
      tbf: row['BFP'],
      gf: row['GF'],
      r: row['R'],
      sac: row['SH'],
      sf: row['SF'],
      gidp: row['GIDP']
    )
  end
end

CSV.foreach("#{file}baseballdatabank/core/Fielding.csv", headers: true) do |row|
  if row['yearID'] == '2016'
    player = Player.find_by(player_code: row['playerID'])
    team = Team.find_by(team_code: row['teamID'], year: 2016)
    FieldingRecord.create(
      player: player,
      year: row['yearID'],
      stint: row['stint'],
      team: team,
      pos: row['POS'],
      games: row['G'],
      gs: row['GS'],
      inn_outs: row['InnOuts'],
      po: row['PO'],
      a: row['A'],
      e: row['E'],
      dp: row['DP'],
      pb: row['PB'],
      wp: row['WP'],
      sb: row['SB'],
      cs: row['CS'],
      zr: row['ZR']
    )
  end
end