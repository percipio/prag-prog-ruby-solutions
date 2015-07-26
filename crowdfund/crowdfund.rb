require_relative "portfolio"

# Instantiate 4 projects
project1 = Project.new("LMN", 0, 2000)
project2 = Project.new("XYZ", 0, 3000)
project3 = Project.new("ALT", 50, 1000)

# Create the portfolio
awesome_fund = Portfolio.new("Awesome Fund")
# Add projects to portfolio
awesome_fund.add_project(project1)
awesome_fund.add_project(project2)
awesome_fund.add_project(project3)
# Show the portfolio
awesome_fund.show_projects(2)
