sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'appcollege1/test/integration/FirstJourney',
		'appcollege1/test/integration/pages/collegeList',
		'appcollege1/test/integration/pages/collegeObjectPage'
    ],
    function(JourneyRunner, opaJourney, collegeList, collegeObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('appcollege1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThecollegeList: collegeList,
					onThecollegeObjectPage: collegeObjectPage
                }
            },
            opaJourney.run
        );
    }
);