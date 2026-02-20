sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"bpapp/test/integration/pages/BusinessPartnerList",
	"bpapp/test/integration/pages/BusinessPartnerObjectPage"
], function (JourneyRunner, BusinessPartnerList, BusinessPartnerObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('bpapp') + '/test/flp.html#app-preview',
        pages: {
			onTheBusinessPartnerList: BusinessPartnerList,
			onTheBusinessPartnerObjectPage: BusinessPartnerObjectPage
        },
        async: true
    });

    return runner;
});

