sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'securities/test/integration/FirstJourney',
		'securities/test/integration/pages/SecuritiesList',
		'securities/test/integration/pages/SecuritiesObjectPage',
		'securities/test/integration/pages/QuotesObjectPage'
    ],
    function(JourneyRunner, opaJourney, SecuritiesList, SecuritiesObjectPage, QuotesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('securities') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSecuritiesList: SecuritiesList,
					onTheSecuritiesObjectPage: SecuritiesObjectPage,
					onTheQuotesObjectPage: QuotesObjectPage
                }
            },
            opaJourney.run
        );
    }
);