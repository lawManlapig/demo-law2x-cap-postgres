sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'employeess4',
            componentId: 'Leaves1ObjectPage',
            contextPath: '/EmployeesS4/to_Leaves'
        },
        CustomPageDefinitions
    );
});