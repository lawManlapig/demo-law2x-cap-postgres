sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'employeess4',
            componentId: 'EmployeesS4ObjectPage',
            contextPath: '/EmployeesS4'
        },
        CustomPageDefinitions
    );
});