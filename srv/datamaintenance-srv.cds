using db.v1 as db from '../db/schema';

service DataMaintenanceService {
    entity Employees as projection on db.Employees;
}
