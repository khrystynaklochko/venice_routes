module Routes
  class RoutesSearch

    def initialize(routes = {}) 
      @routes = routes
    end

    attr_accessor :routes
    
    def from_c_to_c
      array = @routes
      array = array.split(", ").sort
      start_point_index = []
      end_point_index = []
      i = 0
      j = 0
      array.each do |vertex_pair|
        if vertex_pair[0] == "C"
           end_point_index[j] = vertex_pair[1]
           j = j + 1
        end
      end
      end_point_index.each do |v|
        if @routes.include?(v+"C")
          i = i +1
          else
            array.each do |vertex_pair|
              if vertex_pair[0] == v 
                end_point_index[j] = vertex_pair[1]
                j = j + 1
              end
            end
          end
      end
      end_point_index.each do |v|
        if @routes.include?(v+"C")
          i = i + 1
        end
      end
      i
    end

    def from_a_to_c
      array = @routes
      array = array.split(", ").sort
      start_point_index = []
      end_point_index = []
      i = 0
      j = 0 
      array.each do |vertex_pair|
        if vertex_pair[0] == "A"
           end_point_index[i] = vertex_pair[1]
           i = i + 1
        end
      end
      end_point_index.each do |v|
        if @routes.include?(v+"C")
          else
            array.each do |vertex_pair|
              if vertex_pair[0] == v 
                end_point_index[i] = vertex_pair[1]
                j = j + 1
              end
            end
          end
      end
      end_point_index.each do |v|
        if @routes.include?(v+"C")
          else
            array.each do |vertex_pair|
              if vertex_pair[0] == v 
                end_point_index[j] = vertex_pair[1]
                j = j + 1
              end
            end
          end
       end
      i = 0
      end_point_index.each do |v|
        if @routes.include?(v+"C")
          i = i + 1
        end
      end
      i
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
      answers[6] = from_c_to_c
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