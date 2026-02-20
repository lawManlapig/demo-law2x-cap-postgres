using db.v1 as db from '../db/schema';

using {BS4200_Employees_v2 as s4srv} from './external/BS4200_Employees_v2';
using {ZTST_SB_CUSTOM_V2 as s4srvCx} from './external/ZTST_SB_CUSTOM_V2';
using {NorthwindV4} from './external/NorthwindV4';

// Structures
type parametersBuPa {
    BusinessPartner         : String;
    BusinessPartnerFullName : String;
}

service DataMaintenanceService {
    entity Employees        as projection on db.Employees;
    entity EmployeesS4      as projection on s4srv.Employees1;

    entity BusinessPartner  as
        projection on s4srvCx.ZTST_C_BusinessPartner {
            key BusinessPartner,
                BusinessPartnerFullName
        };

    entity Products         as
        projection on NorthwindV4.Products {
            key ProductID,
                ProductName
        };

    entity BusinessPartners as projection on db.BusinessPartners;

    action PublishToPostgreSQL(params: array of parametersBuPa) returns String;
}
