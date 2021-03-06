#'
#'@title Validate sbtools session state
#'
#'@param session sbtools session object (from \code{\link{authenticate_sb}})
#'
#'@return 
#'\code{TRUE/FALSE} indicating if session is valid and can be used. 
#'Returns TRUE if session is NULL as well.
#'
#'@details
#'This validates the underyling RCurl session. 
#'The session object becomes invalid if the R session has been saved to disk
#'or persisted through an R restart. This verifies that the session object is
#'either valid, or is a NULL object, which means no session state is being
#'persisted. Note, this does not verify the credentials are valid or that
#'you have permission to access the SB item, so it does not guarantee
#'a successful request.
#'
#'
#'@examples
#'\dontrun{
#'session = authenticate_sb('user@@usgs.gov')
#'
#'#return true as underlying RCurl session is valid
#'session_validate(session)
#'}
#'
#'@export
session_validate = function(session){
	
	if(is.null(session)){
		return(TRUE)
	}
	
	if(!inherits(session, 'handle')){
		return(FALSE)
	}
	
	#from here:
	#http://stackoverflow.com/questions/26666614/how-do-i-check-if-an-externalptr-is-null-from-within-r
	#may have to implement C code
	return(!identical(session[['handle']]@ref, new('externalptr')))
	
}