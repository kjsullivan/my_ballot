
  puts "Destroying all existing Positions, if any."
  Position.destroy_all

  positions = [
        {:name => "President"},
        {:name => "U.S. House"},
        {:name => "State Senate"},
        {:name => "State House"},
        {:name => "Metropolitan Water Reclamation District Commissioners", :note => "Vote for up to three candidates (6-year term)"},
        {:name => "Clerk of the Circuit Court" },
        {:name => "Recorder"},
        {:name => "State's Attorney"},
        {:name => "Judge, Illinois Supreme Court (Vacancy of Fitzgerald)"},
        {:name => "Judge, Cook County Judicial Circuit (Vacancy of Stralka)"},
        {:name => "Judge, Cook County Judicial Circuit (Vacancy of Ward)"},
        {:name => "Judge, Cook County Judicial Circuit (Vacancy of Conlon)"},
        {:name => "Judge, Cook County Judicial Circuit (Vacancy of Jordan)"},
        {:name => "Judge, Cook County Judicial Circuit (Kirie Kinnaird)"},
        {:name => "Judge, Cook County Judicial Circuit (Vacancy of Moran)"},
        {:name => "Judge, Cook County Judicial Circuit (Vacancy of O'Brien, Jr.)"},
        {:name => "Judge, Cook County Judicial Circuit (Vacancy of O'Mara Frossard)"},
        {:name => "Judge, Cook County Judicial Circuit (Vacancy of Pucinski)"},
        {:name => "Judge, Cook County Judicial Circuit (Vacancy of Simmons, Jr.)"},
        {:name => "Appellate Court"},
        {:name => "Circuit Court"}
  ]
  
  Position.create positions
  
  