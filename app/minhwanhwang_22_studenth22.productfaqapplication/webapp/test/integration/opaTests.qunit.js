sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'minhwanhwang22studenth22/productfaqapplication/test/integration/FirstJourney',
		'minhwanhwang22studenth22/productfaqapplication/test/integration/pages/ProductFAQList',
		'minhwanhwang22studenth22/productfaqapplication/test/integration/pages/ProductFAQObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductFAQList, ProductFAQObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('minhwanhwang22studenth22/productfaqapplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductFAQList: ProductFAQList,
					onTheProductFAQObjectPage: ProductFAQObjectPage
                }
            },
            opaJourney.run
        );
    }
);