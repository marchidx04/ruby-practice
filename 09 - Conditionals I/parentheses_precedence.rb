def authenticate_agent(rank, name, credentials)
  if (rank == "007" && name == "James Bond") || credentials == "Secret Agent"
    puts "Access granted, please proceed to Intelligence department!"
  else
    puts "Access denied, #{name}"
  end
end

authenticate_agent("007", "James Bond", "SPY") # Access granted, please proceed to Intelligence department!
authenticate_agent("007", "jojo", "Secret Agent") # Access granted, please proceed to Intelligence department!
authenticate_agent("007", "jojo", "spy") # Access denied, jojo
