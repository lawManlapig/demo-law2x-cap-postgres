import * as cds from "@sap/cds";

export class DataMaintenanceService extends cds.ApplicationService {
    async init() {

        const s4EmployeesOData = await cds.connect.to("BS4200_Employees_v2");
        const s4Custom = await cds.connect.to("ZTST_SB_CUSTOM_V2");
        const northwindV4 = await cds.connect.to("NorthwindV4");
        const { EmployeesS4, Employees, BusinessPartner, Products, BusinessPartners } = this.entities;

        this.on("READ", EmployeesS4, (req) => {
            return s4EmployeesOData.run(req.query);
        });

        this.on("READ", BusinessPartner, (req) => {
            return s4Custom.run(req.query);
        });

        this.on("READ", Products, (req) => {
            return northwindV4.run(req.query);
        });

        this.on("PublishToPostgreSQL", BusinessPartners, (req) => {
            console.log("test");
        });

        return super.init();
    }
}