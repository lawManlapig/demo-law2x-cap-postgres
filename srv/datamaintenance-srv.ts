import * as cds from "@sap/cds";

export class DataMaintenanceService extends cds.ApplicationService {
    async init() {

        const s4EmployeesOData = await cds.connect.to("BS4200_Employees_v2");
        const { EmployeesS4, Employees } = this.entities;

        this.on("READ", EmployeesS4, (req) => {
            return s4EmployeesOData.run(req.query);
        });

        return super.init();
    }
}