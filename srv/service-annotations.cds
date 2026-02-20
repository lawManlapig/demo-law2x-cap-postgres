using from './service';

annotate DataMaintenanceService.Employees with @(odata.draft.enabled);
annotate DataMaintenanceService.BusinessPartner with @(Capabilities.DeleteRestrictions: {Deletable: false});
