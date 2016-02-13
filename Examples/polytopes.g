-LoadPackage( "NC" );
-
-
-#######################################################
-##
-## Example of a not very ample( and thus not normal ) polytope.
-##
-#######################################################
-P:= Polytope( [ [ 0, 0, 0 ], [ 1, 0, 0 ], [ 0, 1, 0 ], [ 1, 1, 2 ] ] );
-# <A polytope in |R^3>
-IsNormalPolytope( P );
-# false
-IsVeryAmple( P );
-# false
-
-#######################################################
-##
-## Example of a normal( and thus very ample ) polytope.
-##
-#######################################################
-Q:= Polytope( [ [ 0, 0, 0 ], [ 1, 0, 0 ], [ 0, 1, 0 ], [ 1, 1, 1 ] ] );
-# <A polytope in |R^3>
-IsNormalPolytope( Q );
-# true
-IsVeryAmple( Q );
-# true
-Q;
-# <A normal very ample polytope in |R^3>
-
-#######################################################
-##
-## Examples of a very ample but not normal polytope.
-##
-#######################################################
-
-## Example from "Normality and Minkowski sum of Lattice Polytopes, Shoetsu Ogata"
-T:= Polytope( [ [ 0, 0, 0 ], [ 1, 0, 0 ], [ 0, 1, 0 ], [ 1, 1, 4 ] ] ); 
-# <A polytope in |R^3>
-I:= Polytope( [ [ 0, 0, 0 ], [ 0, 0, 1 ] ] );
-# <A polytope in |R^3>
-J:= T + I; 
-# <A polytope in |R^3>
-IsVeryAmple( J );
-# true
-IsNormalPolytope( J );
-# false
-J;
-# <A very ample polytope in |R^3>
-
-
-## Example 2.2.20 Cox, Toric Varieties
-A:= [ [1,1,1,0,0,0], [1,1,0,1,0,0], [1,0,1,0,1,0], [ 1,0,0,1,0,1], [ 1,0,0,0,1,1], [ 0,1,1,0,0,1], [0,1,0,1,1,0], [0,1,0,0,1,1], [0,0,1,1,1,0], [0,0,1,1,0,1] ];
-# [ [ 1, 1, 1, 0, 0, 0 ], [ 1, 1, 0, 1, 0, 0 ], [ 1, 0, 1, 0, 1, 0 ], [ 1, 0, 0, 1, 0, 1 ], [ 1, 0, 0, 0, 1, 1 ], [ 0, 1, 1, 0, 0, 1 ], 
-#   [ 0, 1, 0, 1, 1, 0 ], [ 0, 1, 0, 0, 1, 1 ], [ 0, 0, 1, 1, 1, 0 ], [ 0, 0, 1, 1, 0, 1 ] ]
-H:= Polytope( A );
-# <A polytope in |R^6>
-IsVeryAmple( H );   
-# true
-IsNormalPolytope( H );
-# false
-H;
-# <A very ample polytope in |R^6>
-
-
-#######################################################
-##
-## Example of a not normal polytope
-##
-#######################################################
-
-l:= [ [ 0, 0, 1 ], [ 0, 0, 0 ], [ 1, 0, 0 ], [ 1, 0, 1 ], [ 0, 1, 0 ], [ 0, 1, 1 ], [ 1, 1, 4 ], [ 1, 1, 5 ] ];
-P:= Polytope( l );
-# <A polytope in |R^3>
-IsNormalPolytope( P );
-# false
-lattic_points:= LatticePoints( P );
-# [ [ 0, 0, 0 ], [ 0, 0, 1 ], [ 0, 1, 0 ], [ 0, 1, 1 ], [ 1, 0, 0 ], [ 1, 0, 1 ], [ 1, 1, 4 ], [ 1, 1, 5 ] ]
-u:= Cartesian( lattic_points, lattic_points );;
-k:= Set( List( u, u-> u[1]+u[2] ) );
-# [ [ 0, 0, 0 ], [ 0, 0, 1 ], [ 0, 0, 2 ], [ 0, 1, 0 ], [ 0, 1, 1 ], [ 0, 1, 2 ], [ 0, 2, 0 ], [ 0, 2, 1 ], [ 0, 2, 2 ], [ 1, 0, 0 ], 
-#  [ 1, 0, 1 ], [ 1, 0, 2 ], [ 1, 1, 0 ], [ 1, 1, 1 ], [ 1, 1, 2 ], [ 1, 1, 4 ], [ 1, 1, 5 ], [ 1, 1, 6 ], [ 1, 2, 4 ], [ 1, 2, 5 ], [ 1, 2, 6 ], [ 2, 0, 0 ], [ 2, 0, 1 ], [ 2, 0, 2 ], [ 2, 1, 4 ], [ 2, 1, 5 ], 
-#  [ 2, 1, 6 ], [ 2, 2, 8 ], [ 2, 2, 9 ], [ 2, 2, 10 ] ]
-Q:= 2*P;
-# <A polytope in |R^3 with 8 vertices>
-LatticePoints( Q );
-# [ [ 0, 0, 0 ], [ 0, 0, 1 ], [ 0, 0, 2 ], [ 0, 1, 0 ], [ 0, 1, 1 ], [ 0, 1, 2 ], [ 0, 2, 0 ], [ 0, 2, 1 ], [ 0, 2, 2 ], [ 1, 0, 0 ], 
-#   [ 1, 0, 1 ], [ 1, 0, 2 ], [ 1, 1, 0 ], [ 1, 1, 1 ], [ 1, 1, 2 ], [ 1, 1, 3 ], [ 1, 1, 4 ], [ 1, 1, 5 ], [ 1, 1, 6 ], [ 1, 2, 4 ], [ 1, 2, 5 ], [ 1, 2, 6 ], [ 2, 0, 0 ], [ 2, 0, 1 ], [ 2, 0, 2 ], [ 2, 1, 4 ], 
-#   [ 2, 1, 5 ], [ 2, 1, 6 ], [ 2, 2, 8 ], [ 2, 2, 9 ], [ 2, 2, 10 ] ]
-## i.e. we have [1,1,3] in (Q Ո Z^3) but not in k( = Minkowski sum of lattic_points with itself).