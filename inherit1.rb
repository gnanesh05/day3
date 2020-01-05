class A
    def initialize(aname,bname)
      @name=aname
      @type=bname
     end
     
     private
     def m1
        puts "using private method"
     end
     public
     def m3
       m1
       puts" this is public method"
      end
end

class B<A  # only b can access a not the way around
    def m2
      puts "again something"
 end
    def initialize(sname,mname)
     super(sname,mname)
     end
    def m4
     puts @name, @type
     puts "using derived method  ",m3
   end
end
a1= A.new("hiii","yyh") 
a1.m3
b1 =B.new("hello","bye")
b1.m2
b1.m4
