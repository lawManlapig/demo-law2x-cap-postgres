/* checksum : 9d5ed35c3fa5423fda07495d8a4b8e40 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx pdf'
service BS4200_Employees_v2 {
  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.searchable : 'true'
  @sap.addressable : 'false'
  @sap.content.version : '1'
  @sap.label : 'Draft Administration Data'
  entity I_DraftAdministrativeData {
    @sap.label : 'Draft (Technical ID)'
    key DraftUUID : UUID not null;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Draft Entity ID'
    key DraftEntityType : String(30) not null;
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.filter.restriction : 'interval'
    @sap.label : 'Draft Created On'
    CreationDateTime : Timestamp;
    @sap.display.format : 'UpperCase'
    @sap.text : 'CreatedByUserDescription'
    @sap.label : 'Draft Created By'
    @sap.value.list : 'standard'
    CreatedByUser : String(12);
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.filter.restriction : 'interval'
    @sap.label : 'Draft Last Changed On'
    LastChangeDateTime : Timestamp;
    @sap.display.format : 'UpperCase'
    @sap.text : 'LastChangedByUserDescription'
    @sap.label : 'Draft Last Changed By'
    @sap.value.list : 'standard'
    LastChangedByUser : String(12);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Draft Access Type'
    DraftAccessType : String(1);
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Draft In Process Since'
    ProcessingStartDateTime : Timestamp;
    @sap.display.format : 'UpperCase'
    @sap.text : 'InProcessByUserDescription'
    @sap.label : 'Draft In Process By'
    InProcessByUser : String(12);
    @sap.label : 'Draft Is Kept By User'
    DraftIsKeptByUser : Boolean;
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Draft Locked Since'
    EnqueueStartDateTime : Timestamp;
    @sap.label : 'Draft Created By Me'
    DraftIsCreatedByMe : Boolean;
    @sap.label : 'Draft Last Changed By Me'
    DraftIsLastChangedByMe : Boolean;
    @sap.label : 'Draft In Process By Me'
    DraftIsProcessedByMe : Boolean;
    @sap.label : 'Draft Created By (Description)'
    CreatedByUserDescription : String(80);
    @sap.label : 'Draft Last Changed By (Description)'
    LastChangedByUserDescription : String(80);
    @sap.label : 'Draft In Process By (Description)'
    InProcessByUserDescription : String(80);
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.searchable : 'true'
  @sap.content.version : '1'
  @sap.label : 'Draft User'
  @sap.value.list : 'true'
  entity I_DraftAdministrativeUserVH {
    @sap.display.format : 'UpperCase'
    @sap.text : 'UserDescription'
    @sap.label : 'User'
    @sap.quickinfo : 'User Name in User Master Record'
    key UserID : String(12) not null;
    @sap.label : 'Description'
    @sap.quickinfo : 'User Description'
    UserDescription : String(80);
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.content.version : '1'
  @sap.deletable.path : 'Delete_mc'
  @sap.updatable.path : 'Update_mc'
  @sap.label : 'Employee CDS View'
  entity Employees1 {
    @sap.label : 'UUID'
    @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    key uuid : UUID not null;
    key emplid : String(50) not null;
    @sap.label : 'Is active'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    key IsActiveEntity : Boolean not null;
    @sap.label : 'Dyn. Action Control'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Edit_ac : Boolean;
    @sap.label : 'Dyn. Method Control'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Delete_mc : Boolean;
    @sap.label : 'Dyn. Method Control'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Update_mc : Boolean;
    @sap.label : 'Dynamic CbA-Control'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    to_Leaves_oc : Boolean;
    emplname : String(50);
    empldepartment : String(30);
    emplposition : String(30);
    emplemail : String(50);
    @sap.display.format : 'Date'
    emplhire_date : Date;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Created By'
    @sap.quickinfo : 'Created By User'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LocalCreatedBy : String(12);
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Created On'
    @sap.quickinfo : 'Creation Date Time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LocalCreatedAt : Timestamp;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Changed By'
    @sap.quickinfo : 'Local Instance Last Changed By User'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LocalLastChangedBy : String(12);
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Changed On'
    @sap.quickinfo : 'Local Instance Last Change Date Time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LocalLastChangedAt : Timestamp;
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Changed On'
    @sap.quickinfo : 'Last Change Date Time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LastChangedAt : Timestamp;
    @sap.label : 'Has Draft'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HasDraftEntity : Boolean;
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Draft Created On'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DraftEntityCreationDateTime : Timestamp;
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Draft Last Changed On'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DraftEntityLastChangeDateTime : Timestamp;
    @sap.label : 'Has active'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HasActiveEntity : Boolean;
    DraftAdministrativeData : Association to I_DraftAdministrativeData {  };
    SiblingEntity : Association to Employees1 {  };
    to_Leaves : Composition of many Leaves1 {  };
  } actions {
    action Employees1Activate() returns Employees1;
    action Employees1Discard() returns DummyFunctionImportResult;
    action Employees1Edit(
      @sap.label : 'TRUE'
      PreserveChanges : Boolean
    ) returns Employees1;
    action Employees1Prepare() returns DummyFunctionImportResult;
    action Employees1Resume() returns DummyFunctionImportResult;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  @sap.deletable.path : 'Delete_mc'
  @sap.updatable.path : 'Update_mc'
  @sap.label : 'Projection View of the Leave'
  entity Leaves1 {
    @sap.label : 'UUID'
    @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    key uuid : UUID not null;
    @sap.updatable : 'false'
    key leaveid : String(50) not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    key emplid : String(50) not null;
    @sap.label : 'Is active'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    key IsActiveEntity : Boolean not null;
    @sap.label : 'Dyn. Method Control'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Delete_mc : Boolean;
    @sap.label : 'Dyn. Method Control'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Update_mc : Boolean;
    @sap.label : 'UUID'
    @sap.quickinfo : '16 Byte UUID in 16 Bytes (Raw Format)'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    empluuid : UUID;
    leave_type : String(20);
    @sap.display.format : 'Date'
    start_date : Date;
    @sap.display.format : 'Date'
    end_date : Date;
    status : String(15);
    reason : String(100);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Created By'
    @sap.quickinfo : 'Created By User'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LocalCreatedBy : String(12);
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Created On'
    @sap.quickinfo : 'Creation Date Time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LocalCreatedAt : Timestamp;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Changed By'
    @sap.quickinfo : 'Local Instance Last Changed By User'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LocalLastChangedBy : String(12);
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Changed On'
    @sap.quickinfo : 'Local Instance Last Change Date Time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LocalLastChangedAt : Timestamp;
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Changed On'
    @sap.quickinfo : 'Last Change Date Time'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    LastChangedAt : Timestamp;
    @sap.label : 'Has Draft'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HasDraftEntity : Boolean;
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Draft Created On'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DraftEntityCreationDateTime : Timestamp;
    @odata.Type : 'Edm.DateTimeOffset'
    @odata.Precision : 7
    @sap.label : 'Draft Last Changed On'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    DraftEntityLastChangeDateTime : Timestamp;
    @sap.label : 'Has active'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    HasActiveEntity : Boolean;
    to_Employee : Association to Employees1 {  };
    DraftAdministrativeData : Association to I_DraftAdministrativeData {  };
    SiblingEntity : Association to Leaves1 {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SAP__Currencies {
    @sap.label : 'Currency'
    @sap.semantics : 'currency-code'
    key CurrencyCode : String(5) not null;
    @sap.label : 'ISO code'
    ISOCode : String(3) not null;
    @sap.label : 'Short text'
    Text : String(15) not null;
    @odata.Type : 'Edm.Byte'
    @sap.label : 'Decimals'
    DecimalPlaces : Integer not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SAP__UnitsOfMeasure {
    @sap.label : 'Internal UoM'
    @sap.semantics : 'unit-of-measure'
    key UnitCode : String(3) not null;
    @sap.label : 'ISO Code'
    ISOCode : String(3) not null;
    @sap.label : 'Commercial'
    ExternalCode : String(3) not null;
    @sap.label : 'Meas. Unit Text'
    Text : String(30) not null;
    @sap.label : 'Decimal Places'
    DecimalPlaces : Integer;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SAP__MyDocumentDescriptions {
    @sap.label : 'UUID'
    key Id : UUID not null;
    CreatedBy : String(12) not null;
    @odata.Type : 'Edm.DateTime'
    @sap.label : 'Time Stamp'
    CreatedAt : DateTime not null;
    FileName : String(256) not null;
    Title : String(256) not null;
    Format : Association to SAP__FormatSet {  };
    TableColumns : Association to many SAP__TableColumnsSet {  };
    CoverPage : Association to many SAP__CoverPageSet {  };
    Signature : Association to SAP__SignatureSet {  };
    PDFStandard : Association to SAP__PDFStandardSet {  };
    Hierarchy : Association to SAP__HierarchySet {  };
    Header : Association to SAP__PDFHeaderSet {  };
    Footer : Association to SAP__PDFFooterSet {  };
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '1'
  entity SAP__FormatSet {
    @sap.label : 'UUID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Id : UUID not null;
    FitToPage : SAP__FitToPage not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    FontSize : Integer not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Orientation : String(10) not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    PaperSize : String(10) not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    BorderSize : Integer not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    MarginSize : Integer not null;
    @sap.label : 'Font Name'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    FontName : String(255) not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Padding : Integer not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '1'
  entity SAP__PDFStandardSet {
    @sap.label : 'UUID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Id : UUID not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    UsePDFAConformance : Boolean not null;
    @sap.label : 'Indicator'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DoEnableAccessibility : Boolean not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '1'
  entity SAP__TableColumnsSet {
    @sap.label : 'UUID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Id : UUID not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Name : String(256) not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Header : String(256) not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    HorizontalAlignment : String(10) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '1'
  entity SAP__CoverPageSet {
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Title : String(256) not null;
    @sap.label : 'UUID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Id : UUID not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Name : String(256) not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Value : String(256) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '1'
  entity SAP__SignatureSet {
    @sap.label : 'UUID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Id : UUID not null;
    @sap.label : 'Indicator'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DoSign : Boolean not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Reason : String(256) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '1'
  entity SAP__HierarchySet {
    @sap.label : 'UUID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Id : UUID not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DistanceFromRootElement : String(256) not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    DrillStateElement : String(256) not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '1'
  entity SAP__PDFHeaderSet {
    @sap.label : 'UUID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Id : UUID not null;
    Right : SAP__HeaderFooterField not null;
    Left : SAP__HeaderFooterField not null;
    Center : SAP__HeaderFooterField not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.pageable : 'false'
  @sap.addressable : 'false'
  @sap.content.version : '1'
  entity SAP__PDFFooterSet {
    @sap.label : 'UUID'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    key Id : UUID not null;
    Right : SAP__HeaderFooterField not null;
    Left : SAP__HeaderFooterField not null;
    Center : SAP__HeaderFooterField not null;
  };

  @cds.external : true
  @cds.persistence.skip : true
  @sap.content.version : '1'
  entity SAP__ValueHelpSet {
    key VALUEHELP : String not null;
    FIELD_VALUE : String(10) not null;
    DESCRIPTION : String;
  };

  @cds.external : true
  type DummyFunctionImportResult {
    @sap.label : 'TRUE'
    IsInvalid : Boolean;
  };

  @cds.external : true
  type SAP__FitToPage {
    @sap.label : 'Error behavior'
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    ErrorRecoveryBehavior : String(8) not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    IsEnabled : Boolean not null;
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    MinimumFontSize : Integer not null;
  };

  @cds.external : true
  type SAP__HeaderFooterField {
    @sap.creatable : 'false'
    @sap.updatable : 'false'
    @sap.sortable : 'false'
    @sap.filterable : 'false'
    Type : String(256) not null;
  };
};

