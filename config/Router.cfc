component{

	function configure(){
		// Set Full Rewrites
		setFullRewrites( true );

		/**
		 * --------------------------------------------------------------------------
		 * App Routes
		 * --------------------------------------------------------------------------
		 *
		 * Here is where you can register the routes for your web application!
		 * Go get Funky!
		 *
		 */

        with( pattern = "/test", handler = "Test" ).endWith();
		
        // Conventions based routing
		route( ":handler/:action?" ).end();
	}

}