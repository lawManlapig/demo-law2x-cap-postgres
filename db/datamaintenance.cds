namespace db.v1;

using {cuid} from '@sap/cds/common';

entity Employees : cuid {
    firstName : String;
    lastName  : String;
}

entity BusinessPartners : cuid {
    BusinessPartner         : String;
    BusinessPartnerFullName : String;
}
