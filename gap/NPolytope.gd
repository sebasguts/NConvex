##############################################################################
##
##  Polytope.gd         NConvex package                 Sebastian Gutsche
##                                                      Kamal Saleh
##
##  Copyright 2011 Lehrstuhl B für Mathematik, RWTH Aachen
##
##  Polytopes for NConvex package.
##
#############################################################################


DeclareCategory( "IsPolytope",
                 IsConvexObject );

####################################
##
## Constructors
##
####################################

#! @Chapter Polytopes
#! @Section Creating polytopes

#! @Arguments arg 
#! @Returns a **Polytope** Object
#! @Description  
#! The function takes a list in which every entry represents an inequality and returns the polytope defined by them.
DeclareOperation( "PolytopeByInequalities",
                  [ IsList ] );
#! @Arguments arg 
#! @Returns a **Polytope** Object
#! @Description  
#! The function takes the list of the vertices and returns the polytope defined by them.
DeclareOperation( "Polytope",
                  [ IsList ] );

                  
####################################
##
## Attributes
##
####################################

#! @Section Attributes

#! @Arguments polytope 
#! @Returns a CddPolyhedron
#! @Description  
#! Converts the polyhedron to a CddPolyhedron. The functions of CddInterface can then be applied
#! on this polyhedron.
DeclareAttribute( "ExternalCddPolytope",
                    IsPolytope );

#! @Arguments polytope 
#! @Returns a List
#! @Description  
#! The function returns the list of integer points inside the polytope.                    
DeclareAttribute( "LatticePoints",
                    IsPolytope );
  
#! @Arguments polytope 
#! @Returns a List
#! @Description  
#! The function returns an interior point inside the polytope.                    
DeclareAttribute( "RelativeInteriorLatticePoints",
                    IsPolytope );
#! @Arguments polytope 
#! @Returns a List
#! @Description  
#! The function returns tripl [ A, B, C ] from which we can determind all 
DeclareAttribute( "LatticePointsGenerators",
                    IsPolytope );
#! @Arguments polytope 
#! @Returns a List
#! @Description  
#! The function returns the vertices of the polytope  
DeclareAttribute( "VerticesOfPolytope",
                    IsPolytope );

#! @Arguments polytope 
#! @Returns a List
#! @Description  
#! The function returns the list of the inequalities of the facets.                    
DeclareAttribute( "FacetInequalities",
                    IsPolytope );
#! @Arguments polytope 
#! @Returns a List
#! @Description  
#! The function returns the defining inequalities of the polytope.                    
DeclareAttribute( "DefiningInequalities",
                    IsPolytope );                    
                    
#! @Arguments polytope 
#! @Returns a List
#! @Description  
#! The function returns the equalities in the defining inequalities of the polytope.                    
DeclareAttribute( "EqualitiesOfPolytope",
                    IsPolytope );

#! @Arguments polytope 
#! @Returns a List
#! @Description  
#! The function returns XXX.                          
DeclareAttribute( "VerticesInFacets",
                    IsPolytope );
                    
DeclareAttribute( "NormalFan",
                    IsPolytope );

DeclareAttribute( "AffineCone",
                    IsPolytope );

DeclareAttribute( "BabyPolytope",
                    IsPolytope );
#! @Arguments polytope 
#! @Returns a Polytope
#! @Description  
#! The function returns the polar polytope of the given polytope.                   
DeclareAttribute( "PolarPolytope",
                    IsPolytope );

                    
####################################
##
## Properties
##
####################################

#! @Section Properties

#! @Arguments polytope 
#! @Returns a true or false
#! @Description  
#! returns if the polytope empty or not
DeclareProperty( "IsEmpty",
                 IsPolytope );

DeclareProperty( "IsNotEmpty",
                 IsPolytope );

#! @Arguments polytope 
#! @Returns a true or false
#! @Description  
#! returns if the polytope is lattice polytope or not.
DeclareProperty( "IsLatticePolytope",
                 IsPolytope );
#! @Arguments polytope 
#! @Returns a true or false
#! @Description  
#! returns if the polytope is very ample or not.
DeclareProperty( "IsVeryAmple",
                 IsPolytope );

#! @Arguments polytope 
#! @Returns a true or false
#! @Description  
#! returns if the polytope is normal or not.
DeclareProperty( "IsNormalPolytope",
                 IsPolytope );

#! @Arguments polytope 
#! @Returns a true or false
#! @Description  
#! returns if the polytope is simplicial or not.
DeclareProperty( "IsSimplicial",
                 IsPolytope );

#! @Arguments polytope 
#! @Returns a true or false
#! @Description  
#! returns if the polytope is simplex polytope or not.
DeclareProperty( "IsSimplexPolytope",
                 IsPolytope );
                 
#! @Arguments polytope 
#! @Returns a true or false
#! @Description  
#! returns if the polytope is simple or not.
DeclareProperty( "IsSimplePolytope",
                 IsPolytope );
                 
DeclareProperty( "IsBounded",
                 IsPolytope );
                 
####################################
##
##  Operations
##
####################################

DeclareOperation( "Vertices",
                  [ IsPolytope ] );
                  
DeclareOperation( "HasVertices",
                  [ IsPolytope ] );


################################
##
## Methods
##
################################

DeclareOperation( "\*",
                  [ IsPolytope, IsPolytope ] );

DeclareOperation( "\*",
                  [ IsInt, IsPolytope ] );

DeclareOperation( "\*",
                  [ IsPolytope, IsInt ] );

DeclareOperation( "\+",
                  [ IsPolytope, IsPolytope ] );
                  
DeclareOperation( "IntersectionOfPolytopes",
                  [ IsPolytope, IsPolytope ] );
                  
DeclareOperation( "Points", 
                  [ IsList, IsList] );

DeclareOperation( "FourierProjection", 
                  [ IsPolytope, IsInt ] );

#! @InsertChunk example2