class Model

  def initialize(args)
    # store information about an instance of a model
    # and return an instance of a model
  end

  def self.find(id)
    # receives identifying information and returns an instance of the model
  end

  def self.all
    # returns a list of all tasks
  end

  def update
    # receives changing information in order to change the instance
  end

  def destroy
    # removes the instance from existence
  end
end

class Task < Model
  attr_accessor :content


end

task = Task.new({content: "Do the dishes"})
# expect an instance of Task with content of "Do the dishes"
task.update({content: "Eat a donut."})
# expect an instance of Task with content of "Eat a donut."
Task.find(1)
# expect the instance of Task with the content "Eat a donut."
Task.all
# returns an array with one task
task.destroy
# expect it to return true
Task.all
# returns an empty array
