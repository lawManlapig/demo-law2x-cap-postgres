sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'employeess4',
            componentId: 'EmployeesS4List',
            contextPath: '/EmployeesS4'
        },
        CustomPageDefinitions
    );
});