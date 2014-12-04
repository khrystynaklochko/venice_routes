module Routes
  class RoutesSearch

    def initialize(routes = {}) 
      @routes = routes
    end

    attr_accessor :routes


    def routes_finder
      answers = []
      if @routes.include?('AB') && @routes.include?('BC')
       answers[0] = @routes[@routes.index('AB')+2].to_i + @routes[@routes.index('BC')+2].to_i
      else answers[0] = 'NO SUCH ROUTE'
      end
      if @routes.include?('AD')
       answers[1] = @routes[@routes.index('AD')+2].to_i
      else answers[1] = 'NO SUCH ROUTE'
      end
      if @routes.include?('AD') && @routes.include?('DC')
       answers[2] = @routes[@routes.index('AD')+2].to_i + @routes[@routes.index('DC')+2].to_i
      else answers[2] = 'NO SUCH ROUTE'
      end
      if @routes.include?('AE') && @routes.include?('EB') && @routes.include?('BC') && @routes.include?('CD')
       answers[3] = @routes[@routes.index('AE')+2].to_i + @routes[@routes.index('EB')+2].to_i + @routes[@routes.index('BC')+2].to_i + @routes[@routes.index('CD')+2].to_i
      else answers[3] = 'NO SUCH ROUTE'
      end
      if @routes.include?('AE') && @routes.include?('ED')
       answers[3] = @routes[@routes.index('AE')+2].to_i + @routes[@routes.index('ED')+2].to_i
      else answers[3] = 'NO SUCH ROUTE'
      end
      answers
    end
    def showDistanceMatrix
     # answers = routes_existance
       answers = routes_finder
      puts "#1: #{answers[0]}"
      puts "#2: #{answers[1]}"
      puts "#3: #{answers[2]}"
      puts "#4: #{answers[3]}"
      puts "#5: #{answers[4]}"
      puts "#6: #{answers[5]}"
      puts "#7: #{answers[6]}"
      puts "#8: #{answers[7]}"
      puts "#9: #{answers[8]}"
      puts "#10: #{answers[10]}"
    end
  end
end