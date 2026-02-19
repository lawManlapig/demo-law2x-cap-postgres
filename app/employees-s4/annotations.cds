using DataMaintenanceService as service from '../../srv/datamaintenance-srv';
annotate service.EmployeesS4 with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'emplid',
                Value : emplid,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Edit_ac',
                Value : Edit_ac,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Delete_mc',
                Value : Delete_mc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Update_mc',
                Value : Update_mc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'to_Leaves_oc',
                Value : to_Leaves_oc,
            },
            {
                $Type : 'UI.DataField',
                Label : 'emplname',
                Value : emplname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'empldepartment',
                Value : empldepartment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'emplposition',
                Value : emplposition,
            },
            {
                $Type : 'UI.DataField',
                Label : 'emplemail',
                Value : emplemail,
            },
            {
                $Type : 'UI.DataField',
                Label : 'emplhire_date',
                Value : emplhire_date,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LocalCreatedBy',
                Value : LocalCreatedBy,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LocalCreatedAt',
                Value : LocalCreatedAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LocalLastChangedBy',
                Value : LocalLastChangedBy,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LocalLastChangedAt',
                Value : LocalLastChangedAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'LastChangedAt',
                Value : LastChangedAt,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DraftEntityCreationDateTime',
                Value : DraftEntityCreationDateTime,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DraftEntityLastChangeDateTime',
                Value : DraftEntityLastChangeDateTime,
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
            Label : 'DraftEntityLastChangeDateTime',
            Value : DraftEntityLastChangeDateTime,
        },
        {
            $Type : 'UI.DataField',
            Label : 'emplid',
            Value : emplid,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Edit_ac',
            Value : Edit_ac,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Delete_mc',
            Value : Delete_mc,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Update_mc',
            Value : Update_mc,
        },
    ],
);

