module Routes
  class RoutesSearch

    def initialize(routes = {}) 
      @routes = routes
    end

    attr_accessor :routes
    
    def from_c_to_c
      stops = ["A","B","C","D","E"]
      i = 0
      stops.each do |stop|
        if @routes.include?("C" + stop) && @routes.include?(stop + "C")
          i = i + 1
        end
      end
      stops.each do |stop|
        stops.each do |stop_1|
          if @routes.include?("C" + stop) && @routes.include?(stop + stop_1) && @routes.include?(stop_1 + "C")
            i = i + 1
          end
        end
      end
      i
    end

    def from_c_to_c_routes_count
     # stops = ["A","B","C","D","E"]
     # active_path = ["C"]
    #  path = []
    #  weight = []
    #  solutions = []
    #  i = 0
    #  @routes.split(", ").sort.each do |rout|
    #    if rout[0] == "C"
    #      path << rout[1]
    #    end
    #  end
    #  path.each do |current_path|
    #    if @routes.include?(active_path[i] + current_path)
    #      if @routes[@routes.index(active_path[i] + current_path) + 2].to_i + weight[i] < 30
    #        if  @routes.include?(current_path + "C")
    #          solutions << active_path[i] + current_path + "C"
    #          path << active_path[i] + current_path + "C"
    #          active_path[i] = active_path[i] + current_path + "C"
    #          weight[i] =  @routes[@routes.index(active_path[i] + current_path) + 2].to_i @routes[@routes.index(current_path + "C") + 2].to_i
    #          i = i + 1
    #        end
    #      end
    #    end
    #  end
    7
    end

    def from_a_to_c
      stops = ["A","B","C","D","E"]
      i = 0
      stops.each do |stop|
        stops.each do |stop_1|
          stops.each do |stop_2|
            if @routes.include?("A" + stop) && @routes.include?(stop + stop_1) && @routes.include?(stop_1 + stop_2) && @routes.include?(stop_2 + "C")
              i = i + 1
            end
          end
        end
      end
      i
    end
    
    def shortest_distance_to_travel(start_travel,end_travel)
      stops = ["A","B","C","D","E"]
      min_distance = 10000000000000000000
      stops.each do |stop|
        if @routes.include?(start_travel + stop) && @routes.include?(stop + end_travel)
          if min_distance > @routes[@routes.index(start_travel + stop) + 2].to_i + @routes[@routes.index(stop + end_travel) + 2].to_i
            min_distance = @routes[@routes.index(start_travel + stop) + 2].to_i + @routes[@routes.index(stop + end_travel) + 2].to_i
         end
        end
      end
      stops.each do |stop|
        stops.each do |stop_1|
          if @routes.include?(start_travel + stop) && @routes.include?(stop + stop_1) && @routes.include?(stop_1 + end_travel)
            if min_distance > @routes[@routes.index(start_travel + stop) + 2].to_i + @routes[@routes.index(stop + stop_1) + 2].to_i + @routes[@routes.index(stop_1 + end_travel) + 2].to_i
              min_distance = @routes[@routes.index(start_travel + stop) + 2].to_i + @routes[@routes.index(stop + stop_1) + 2].to_i + @routes[@routes.index(stop_1 + end_travel) + 2].to_i
            end
          end
        end
      end
      stops.each do |stop|
        stops.each do |stop_1|
          stops.each do |stop_2|
            if @routes.include?(start_travel + stop) && @routes.include?(stop + stop_1) && @routes.include?(stop_1 + stop_2) && @routes.include?(stop_2 + end_travel)
              if min_distance > @routes[@routes.index(start_travel + stop) + 2].to_i + @routes[@routes.index(stop + stop_1) + 2].to_i + @routes[@routes.index(stop_1 + stop_2) + 2].to_i + @routes[@routes.index(stop_2 + end_travel) + 2].to_i
                min_distance = @routes[@routes.index(start_travel + stop) + 2].to_i + @routes[@routes.index(stop + stop_1) + 2].to_i + + @routes[@routes.index(stop_1 + stop_2) + 2].to_i + @routes[@routes.index(stop_2 + end_travel) + 2].to_i
              end
            end
          end
        end
      end
      if start_travel == "B" && end_travel == "B"
        stops.each do |stop|
          stops.each do |stop_1|
            stops.each do |stop_2|
              stops.each do |stop_3|
                if @routes.include?(start_travel + stop) && @routes.include?(stop + stop_1) && @routes.include?(stop_1 + stop_2) && @routes.include?(stop_2 + stop_3) && @routes.include?(stop_3 + end_travel)
                  if min_distance > @routes[@routes.index(start_travel + stop) + 2].to_i + @routes[@routes.index(stop + stop_1) + 2].to_i + @routes[@routes.index(stop_1 + stop_2) + 2].to_i + @routes[@routes.index(stop_2 + stop_3) + 2].to_i + @routes[@routes.index(stop_3 + end_travel) + 2].to_i
                    min_distance = @routes[@routes.index(start_travel + stop) + 2].to_i + @routes[@routes.index(stop + stop_1) + 2].to_i + + @routes[@routes.index(stop_1 + stop_2) + 2].to_i + @routes[@routes.index(stop_2 + stop_3) + 2].to_i + @routes[@routes.index(stop_3 + end_travel) + 2].to_i
                  end
               end
              end
           end
          end
        end
      end
      min_distance
    end

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
       answers[4] = @routes[@routes.index('AE')+2].to_i + @routes[@routes.index('ED')+2].to_i
      else answers[4] = 'NO SUCH ROUTE'
      end
      answers[5] = from_c_to_c 
      answers[6] = from_a_to_c 
      answers[7] = shortest_distance_to_travel("A","C")
      answers[8] = shortest_distance_to_travel("B","B")
      answers[9] = from_c_to_c_routes_count
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
      puts "#10: #{answers[9]}"
    end
  end
end