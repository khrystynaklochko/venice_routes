require_relative'routes'
include Routes
routes_search = RoutesSearch.new
#p "Enter routes"
routes = gets.chomp
routes_search.routes = routes
routes_search.showDistanceMatrix



