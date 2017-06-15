# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'
require 'table_print'

# Your Code begins from this line onwards #

 if ARGV[0] == "add"
        Task.create(description:ARGV[1], status:"undone")
        puts "Task added"
    
    elsif ARGV[0] == "list"
         Task.all.each_with_index do |k, idx|
            p ((idx+1).to_s + " " + k.status + " " + k.description + " " + k.created_at.to_s) #+ "(#{k.id})"

        end
       # tp Task.all, :id, :description, :status

    elsif ARGV[0] == "update"
        x = Task.find(ARGV[1])
        x.description = (ARGV[2])
        x.save
        puts "Task updated"


    elsif ARGV[0] == "del"
    	id = Task.all[ARGV[1] - 1].id
        Task.destroy(id)
        puts "Your task has been deleted"

    elsif ARGV[0] == "complete"
        y = Task.find(ARGV[1])
        y.status = "complete"
        y.save

    elsif ARGV[0] == "undone"
        y = Task.find(ARGV[1])
        y.status = "undone"
        y.save

    end


