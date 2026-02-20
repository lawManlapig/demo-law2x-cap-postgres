using DataMaintenanceService as service from '../../srv/datamaintenance-srv';
annotate service.BusinessPartner with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Business Partner',
                Value : BusinessPartner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Full Name',
                Value : BusinessPartnerFullName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Business Partner',
            Value : BusinessPartner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Full Name',
            Value : BusinessPartnerFullName,
        },
    ],
);

