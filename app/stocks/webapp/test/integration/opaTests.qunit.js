sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'stocks/test/integration/FirstJourney',
		'stocks/test/integration/pages/StocksList',
		'stocks/test/integration/pages/StocksObjectPage'
    ],
    function(JourneyRunner, opaJourney, StocksList, StocksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('stocks') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheStocksList: StocksList,
					onTheStocksObjectPage: StocksObjectPage
                }
            },
            opaJourney.run
        );
    }
);