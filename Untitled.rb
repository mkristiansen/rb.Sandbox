# define the 'Test' class
class Test
  
  # run method to execute the test
  def run()

	#words = ["foo", "bar", "baz"]
	#puts words.[](1)
	
	node = {'interfaces' => ['enp0s3','enp0s8','lo']}
	node['interfaces'].each do |dev|
		if "lo" != (dev) 
			puts "network --activate --device=" + dev
			end
		end
	
	#puts node['interfaces'][1]
  end
 
end
 
# create an instance of the 'Test' class
test = Test.new
 
# call the run() method to execute the test
test.run



