sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'minhwanhwang22studenth22/customermessage/test/integration/FirstJourney',
		'minhwanhwang22studenth22/customermessage/test/integration/pages/CustomerMessageList',
		'minhwanhwang22studenth22/customermessage/test/integration/pages/CustomerMessageObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerMessageList, CustomerMessageObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('minhwanhwang22studenth22/customermessage') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerMessageList: CustomerMessageList,
					onTheCustomerMessageObjectPage: CustomerMessageObjectPage
                }
            },
            opaJourney.run
        );
    }
);