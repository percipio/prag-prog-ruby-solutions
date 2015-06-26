def show_projects(project, funding=0)
  time = Time.new.strftime("%I:%M:%S")
  "#{project} has $#{funding} in funding as of #{time}"
end


puts show_projects("Project ABC", 1000)
puts show_projects("Project LMN", 900)
puts show_projects("Project XYZ", 600)
puts show_projects("Project NEMO")
