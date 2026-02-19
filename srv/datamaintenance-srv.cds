using db.v1 as db from '../db/schema';

using {BS4200_Employees_v2 as s4srv} from './external/BS4200_Employees_v2';

service DataMaintenanceService {
    entity Employees   as projection on db.Employees;
    entity EmployeesS4 as projection on s4srv.Employees1;
}
