/* checksum : 7db8420bb5f4ce5c2cfcc4c609629809 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZTST_SB_CUSTOM_V2 {
  @cds.external : true
  @cds.persistence.skip : true
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.deletable : 'false'
  @sap.content.version : '1'
  @sap.label : 'Read-Only CDS for ABAP Cloud'
  entity ZTST_C_BusinessPartner {
    @sap.display.format : 'UpperCase'
    @sap.label : 'Business Partner'
    @sap.quickinfo : 'Business Partner Number'
    key BusinessPartner : String(10) not null;
    @sap.display.format : 'UpperCase'
    @sap.label : 'BP Category'
    @sap.quickinfo : 'Business Partner Category'
    BusinessPartnerCategory : String(1);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Authorization Group'
    AuthorizationGroup : String(4);
    @sap.label : 'BP GUID'
    @sap.quickinfo : 'Business Partner GUID'
    BusinessPartnerUUID : UUID;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Person Number'
    PersonNumber : String(10);
    ETag : String(26);
    BusinessPartnerName : String(81);
    BusinessPartnerFullName : String(81);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Created by'
    @sap.quickinfo : 'User who created the object'
    CreatedByUser : String(12);
    @sap.display.format : 'Date'
    @sap.label : 'Created On'
    @sap.quickinfo : 'Date on which the object was created'
    CreationDate : Date;
    @sap.label : 'Created at'
    @sap.quickinfo : 'Time at which the object was created'
    CreationTime : Time;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Changed by'
    @sap.quickinfo : 'Last user to change object'
    LastChangedByUser : String(12);
    @sap.display.format : 'Date'
    @sap.label : 'Changed on'
    @sap.quickinfo : 'Date when object was last changed'
    LastChangeDate : Date;
    @sap.label : 'Changed at'
    @sap.quickinfo : 'Time at which object was last changed'
    LastChangeTime : Time;
    @sap.label : 'Central Block'
    @sap.quickinfo : 'Central Block for Business Partner'
    BusinessPartnerIsBlocked : Boolean;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Purpose Completed'
    @sap.quickinfo : 'Business Purpose Completed Flag'
    IsBusinessPurposeCompleted : String(1);
    @sap.label : 'First Name'
    @sap.quickinfo : 'First Name of Business Partner (Person)'
    FirstName : String(40);
    @sap.label : 'Last Name'
    @sap.quickinfo : 'Last Name of Business Partner (Person)'
    LastName : String(40);
    @sap.label : 'Full Name'
    PersonFullName : String(80);
    @sap.label : 'Name 1'
    @sap.quickinfo : 'Name 1 of organization'
    OrganizationBPName1 : String(40);
    @sap.label : 'Name 2'
    @sap.quickinfo : 'Name 2 of organization'
    OrganizationBPName2 : String(40);
    @sap.label : 'Name 3'
    @sap.quickinfo : 'Name 3 of organization'
    OrganizationBPName3 : String(40);
    @sap.label : 'Name 4'
    @sap.quickinfo : 'Name 4 of organization'
    OrganizationBPName4 : String(40);
    @sap.display.format : 'NonNegative'
    @sap.label : 'Int. location no. 1'
    @sap.quickinfo : 'International location number (part 1)'
    InternationalLocationNumber1 : String(7);
    @sap.display.format : 'NonNegative'
    @sap.label : 'Int. location no. 2'
    @sap.quickinfo : 'International location number (Part 2)'
    InternationalLocationNumber2 : String(5);
    @sap.display.format : 'NonNegative'
    @sap.label : 'Check digit'
    @sap.quickinfo : 'Check digit for the international location number'
    InternationalLocationNumber3 : String(1);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Legal form'
    @sap.quickinfo : 'BP: Legal form of organization'
    LegalForm : String(2);
    @sap.display.format : 'Date'
    @sap.label : 'Date founded'
    @sap.quickinfo : 'Date organization founded'
    OrganizationFoundationDate : Date;
    @sap.display.format : 'Date'
    @sap.label : 'Liquidation date'
    @sap.quickinfo : 'Liquidation date of organization'
    OrganizationLiquidationDate : Date;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Industry sector'
    Industry : String(10);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Natural Person'
    @sap.quickinfo : 'Business Partner Is a Natural Person Under the Tax Laws'
    IsNaturalPerson : String(1);
    @sap.label : 'Female'
    @sap.quickinfo : 'Selection: Business partner is female'
    IsFemale : Boolean;
    @sap.label : 'Male'
    @sap.quickinfo : 'Selection: Business partner is male'
    IsMale : Boolean;
    @sap.label : 'Unknown'
    @sap.quickinfo : 'Selection: Sex of business partner is not known'
    IsSexUnknown : Boolean;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Title Key'
    @sap.quickinfo : 'Form-of-Address Key'
    FormOfAddress : String(4);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Academic Title 1'
    @sap.quickinfo : 'Academic Title: Key'
    AcademicTitle : String(4);
    @sap.display.format : 'UpperCase'
    @sap.label : '2nd academic title'
    @sap.quickinfo : 'Second academic title (key)'
    AcademicTitle2 : String(4);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Name Format'
    @sap.quickinfo : 'Name format'
    NameFormat : String(2);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Ctry/Reg. for Format'
    @sap.quickinfo : 'Country/Region for Name Format Rule'
    NameCountry : String(3);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Grouping'
    @sap.quickinfo : 'Business Partner Grouping'
    BusinessPartnerGrouping : String(4);
    @sap.display.format : 'UpperCase'
    @sap.label : 'BP Type'
    @sap.quickinfo : 'Business Partner Type'
    BusinessPartnerType : String(4);
    @sap.label : 'Middle Name'
    @sap.quickinfo : 'Middle name or second forename of a person'
    MiddleName : String(40);
    @sap.label : 'Other Last Name'
    @sap.quickinfo : 'Other Last Name of a Person'
    AdditionalLastName : String(40);
    @sap.label : 'Name 1'
    @sap.quickinfo : 'Name 1 (group)'
    GroupBusinessPartnerName1 : String(40);
    @sap.label : 'Name 2'
    @sap.quickinfo : 'Name 2 (group)'
    GroupBusinessPartnerName2 : String(40);
    @sap.label : 'Correspondence lang.'
    @sap.quickinfo : 'Business Partner: Correspondence Language'
    CorrespondenceLanguage : String(2);
    @sap.label : 'Language'
    @sap.quickinfo : 'Business partner: Language'
    Language : String(2);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Search Term 1'
    @sap.quickinfo : 'Search Term 1 for Business Partner'
    SearchTerm1 : String(20);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Search Term 2'
    @sap.quickinfo : 'Search Term 2 for Business Partner'
    SearchTerm2 : String(20);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Name 1/Last Name'
    @sap.quickinfo : 'Search Help Field 1 (Name 1/Last Name)'
    BPLastNameSearchHelp : String(35);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Name 2/First Name'
    @sap.quickinfo : 'Search Help Field 2 (Name 2/First Name)'
    BPFirstNameSearchHelp : String(35);
    @sap.label : 'Known As'
    @sap.quickinfo : 'Nickname of Business Partner (Person)'
    BusinessPartnerNicknameLabel : String(40);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Address Number'
    IndependentAddressID : String(10);
    @sap.label : 'Is active'
    @sap.quickinfo : 'Draft - Indicator - Is active document'
    IsActiveEntity : Boolean;
    @sap.display.format : 'Date'
    @sap.label : 'Date of Birth'
    @sap.quickinfo : 'Date of Birth of Business Partner'
    BirthDate : Date;
    @sap.label : 'Archiving Flag'
    @sap.quickinfo : 'Central Archiving Flag'
    IsMarkedForArchiving : Boolean;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Contact'
    @sap.quickinfo : 'Business Partner: Contact Permission'
    ContactPermission : String(1);
    @sap.display.format : 'UpperCase'
    @sap.label : 'External BP Number'
    @sap.quickinfo : 'Business Partner Number in External System'
    BusinessPartnerIDByExtSystem : String(20);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Legal entity'
    @sap.quickinfo : 'Legal Entity of Organization'
    LegalEntityOfOrganization : String(2);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Print Format'
    @sap.quickinfo : 'Business Partner Print Format'
    BusinessPartnerPrintFormat : String(1);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Origin'
    @sap.quickinfo : 'Data Origin Types'
    BusinessPartnerDataOriginType : String(4);
    @sap.label : 'Not Released'
    @sap.quickinfo : 'Indicator: Not Released'
    BusinessPartnerIsNotReleased : Boolean;
    @sap.label : 'Not Legally Competnt'
    @sap.quickinfo : 'Indicator: Not Legally Competent'
    IsNotContractuallyCapable : Boolean;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Occupation'
    @sap.quickinfo : 'Occupation/group'
    BusinessPartnerOccupation : String(4);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Marital Status'
    @sap.quickinfo : 'Marital Status of Business Partner'
    BusPartMaritalStatus : String(1);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Nationality'
    BusPartNationality : String(3);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Ctry/Reg. of Origin'
    @sap.quickinfo : 'Country/Region of Origin: Non-Resident Companies'
    NonResidentCompanyOriginCntry : String(3);
    @sap.label : 'Salutation'
    BusinessPartnerSalutation : String(50);
    @sap.label : 'Name at Birth'
    @sap.quickinfo : 'Name at birth of business partner'
    BusinessPartnerBirthName : String(40);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Name Supplement'
    @sap.quickinfo : 'Name supplement, e.g. noble title (key)'
    BusinessPartnerSupplementName : String(4);
    @sap.label : 'Birthplace'
    @sap.quickinfo : 'Birthplace of business partner'
    BusinessPartnerBirthplaceName : String(40);
    @sap.label : 'Employer'
    @sap.quickinfo : 'Name of Employer of a Natural Person'
    NaturalPersonEmployerName : String(35);
    @sap.display.format : 'Date'
    @sap.label : 'Death date'
    @sap.quickinfo : 'Date of death of business partner'
    BusinessPartnerDeathDate : Date;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Birth Date Status'
    @sap.quickinfo : 'Date of Birth: Status'
    BusinessPartnerBirthDateStatus : String(1);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Partner group type'
    @sap.quickinfo : 'Group type'
    BusinessPartnerGroupType : String(4);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Prefix Key'
    @sap.quickinfo : 'Name Prefix (Key)'
    LastNamePrefix : String(4);
    @sap.display.format : 'UpperCase'
    @sap.label : '2nd prefix'
    @sap.quickinfo : '2nd name prefix (key)'
    LastNameSecondPrefix : String(4);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Initials'
    @sap.quickinfo : '&quot;Middle Initial&quot; or personal initials'
    Initials : String(10);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Sex'
    @sap.quickinfo : 'Sex of business partner (person)'
    GenderCodeName : String(1);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Ctrlr. Set'
    @sap.quickinfo : 'BP: Data Controller Set Flag'
    DataControllerSet : String(1);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Controller'
    @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
    DataController1 : String(30);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Controller'
    @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
    DataController2 : String(30);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Controller'
    @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
    DataController3 : String(30);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Controller'
    @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
    DataController4 : String(30);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Controller'
    @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
    DataController5 : String(30);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Controller'
    @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
    DataController6 : String(30);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Controller'
    @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
    DataController7 : String(30);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Controller'
    @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
    DataController8 : String(30);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Controller'
    @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
    DataController9 : String(30);
    @sap.display.format : 'UpperCase'
    @sap.label : 'Data Controller'
    @sap.quickinfo : 'BP: Data Controller (Internal Use Only)'
    DataController10 : String(30);
    @sap.label : 'DC Not Required'
    @sap.quickinfo : 'BP: Data Controller Not Required'
    BPDataControllerIsNotRequired : Boolean;
    @sap.label : 'Military use'
    @sap.quickinfo : 'ID for mainly military use'
    TrdCmplncLicenseIsMilitarySctr : Boolean;
    @sap.display.format : 'UpperCase'
    @sap.label : 'Nuclear Sector'
    @sap.quickinfo : 'Nuclear Sector (Indicator)'
    TrdCmplncLicenseIsNuclearSctr : String(1);
  };
};

