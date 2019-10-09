

class Application 
    def call(env)
        resp = Rack::Response.new
        
        morning = 'Good Morning'
        afternoon = 'Good Afternoon'


        
        resp.write "#{morning}"
        resp.write "#{afternoon}"
        
        if morning == Time.now 
            morning 
         else 
            afternoon 
         end
        resp.finish 
    end
end