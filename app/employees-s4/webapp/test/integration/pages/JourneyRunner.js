sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"employeess4/test/integration/pages/EmployeesS4List",
	"employeess4/test/integration/pages/EmployeesS4ObjectPage",
	"employeess4/test/integration/pages/Leaves1ObjectPage"
], function (JourneyRunner, EmployeesS4List, EmployeesS4ObjectPage, Leaves1ObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('employeess4') + '/test/flp.html#app-preview',
        pages: {
			onTheEmployeesS4List: EmployeesS4List,
			onTheEmployeesS4ObjectPage: EmployeesS4ObjectPage,
			onTheLeaves1ObjectPage: Leaves1ObjectPage
        },
        async: true
    });

    return runner;
});

