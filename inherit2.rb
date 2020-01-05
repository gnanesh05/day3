class College
 def initialize(name=nil,school=nil)
    @name=name
    @school=school
 end
 def display
     puts @name
     puts @school
 end
end

class Department1<College
  attr_accessor :depname, :total, :name, :school
  def initialize(depname,total,name,school)
      @depname=depname
      @total=total
    super(name,school)
   end
  def display1
      display
     puts @school
     puts @name
   end
  end

class Department2<College
  attr_accessor :depname, :total, :name, :school
  def display2
      display
     puts @depname
     puts @total
   end
  end
col=College.new
dep1= Department1.new("cse",8.00,"gnanesh","ctv")
dep1.display1
dep2= Department2.new
puts "depname"
 dep2.depname= gets.chomp
puts "cg"
 dep2.total=gets.chomp.to_i
puts "name"
 dep2.name=gets.chomp
puts "school"
 dep2.school=gets.chomp
dep2.display2
