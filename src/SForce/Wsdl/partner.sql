
CREATE TABLE Account (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    MasterRecordId VARCHAR(18) NULL,
    Name VARCHAR(255) NOT NULL,
    Type ENUM('Prospect', 'Customer - Direct', 'Customer - Channel', 'Channel Partner / Reseller', 'Installation Partner', 'Technology Partner', 'Other') NULL,
    ParentId VARCHAR(18) NULL,
    BillingStreet VARCHAR(255) NULL,
    BillingCity VARCHAR(40) NULL,
    BillingState VARCHAR(80) NULL,
    BillingPostalCode VARCHAR(20) NULL,
    BillingCountry VARCHAR(80) NULL,
    ShippingStreet VARCHAR(255) NULL,
    ShippingCity VARCHAR(40) NULL,
    ShippingState VARCHAR(80) NULL,
    ShippingPostalCode VARCHAR(20) NULL,
    ShippingCountry VARCHAR(80) NULL,
    Phone VARCHAR(40) NULL,
    Fax VARCHAR(40) NULL,
    AccountNumber VARCHAR(40) NULL,
    Website VARCHAR(255) NULL,
    Sic VARCHAR(20) NULL,
    Industry ENUM('Agriculture', 'Apparel', 'Banking', 'Biotechnology', 'Chemicals', 'Communications', 'Construction', 'Consulting', 'Education', 'Electronics', 'Energy', 'Engineering', 'Entertainment', 'Environmental', 'Finance', 'Food & Beverage', 'Government', 'Healthcare', 'Hospitality', 'Insurance', 'Machinery', 'Manufacturing', 'Media', 'Not For Profit', 'Recreation', 'Retail', 'Shipping', 'Technology', 'Telecommunications', 'Transportation', 'Utilities', 'Other') NULL,
    AnnualRevenue DECIMAL(18, 0) NULL,
    NumberOfEmployees INT(8) NULL,
    Ownership ENUM('Public', 'Private', 'Subsidiary', 'Other') NULL,
    TickerSymbol VARCHAR(20) NULL,
    Description VARCHAR(32000) NULL,
    Rating ENUM('Hot', 'Warm', 'Cold') NULL,
    Site VARCHAR(80) NULL,
    OwnerId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    LastActivityDate DATE NULL,
    Jigsaw VARCHAR(20) NULL,
    JigsawCompanyId VARCHAR(20) NULL,
    CleanStatus ENUM('Matched', 'Different', 'Acknowledged', 'NotFound', 'Inactive', 'Pending', 'SelectMatch', 'Skipped') NULL,
    AccountSource ENUM('Web', 'Phone Inquiry', 'Partner Referral', 'Purchased List', 'Other') NULL,
    DunsNumber VARCHAR(9) NULL,
    Tradestyle VARCHAR(255) NULL,
    NaicsCode VARCHAR(8) NULL,
    NaicsDesc VARCHAR(120) NULL,
    YearStarted VARCHAR(4) NULL,
    SicDesc VARCHAR(80) NULL,
    DandbCompanyId VARCHAR(18) NULL,
    CustomerPriority__c ENUM('High', 'Low', 'Medium') NULL,
    SLA__c ENUM('Gold', 'Silver', 'Platinum', 'Bronze') NULL,
    Active__c ENUM('No', 'Yes') NULL,
    NumberofLocations__c DECIMAL(3, 0) NULL,
    UpsellOpportunity__c ENUM('Maybe', 'No', 'Yes') NULL,
    SLASerialNumber__c VARCHAR(10) NULL,
    SLAExpirationDate__c DATE NULL
);

CREATE TABLE AccountContactRole (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    AccountId VARCHAR(18) NOT NULL,
    ContactId VARCHAR(18) NOT NULL,
    Role ENUM('Business User', 'Decision Maker', 'Economic Buyer', 'Economic Decision Maker', 'Evaluator', 'Executive Sponsor', 'Influencer', 'Technical Buyer', 'Other') NULL,
    IsPrimary BIT NOT NULL
);

CREATE TABLE AccountFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE AccountHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    AccountId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('accountMerged', 'Name', 'TextName', 'AccountNumber', 'Owner', 'Site', 'AccountSource', 'Active__c', 'AnnualRevenue', 'BillingAddress', 'BillingCity', 'BillingCountry', 'BillingGeocodeAccuracy', 'BillingLatitude', 'BillingLongitude', 'BillingState', 'BillingStreet', 'BillingPostalCode', 'CleanStatus', 'created', 'accountCreatedFromLead', 'CustomerPriority__c', 'DandbCompany', 'Jigsaw', 'Description', 'DunsNumber', 'NumberOfEmployees', 'Fax', 'feedEvent', 'Industry', 'accountUpdatedByLead', 'personAccountUpdatedByLead', 'NaicsCode', 'NaicsDesc', 'NumberofLocations__c', 'ownerAccepted', 'ownerAssignment', 'Ownership', 'Parent', 'Phone', 'Rating', 'locked', 'unlocked', 'ShippingAddress', 'ShippingCity', 'ShippingCountry', 'ShippingGeocodeAccuracy', 'ShippingLatitude', 'ShippingLongitude', 'ShippingState', 'ShippingStreet', 'ShippingPostalCode', 'Sic', 'SicDesc', 'SLA__c', 'SLAExpirationDate__c', 'SLASerialNumber__c', 'TickerSymbol', 'Tradestyle', 'Type', 'UpsellOpportunity__c', 'Website', 'YearStarted') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE AccountPartner (
    Id VARCHAR(18) PRIMARY KEY,
    AccountFromId VARCHAR(18) NOT NULL,
    AccountToId VARCHAR(18) NULL,
    OpportunityId VARCHAR(18) NULL,
    Role ENUM('System Integrator', 'Agency', 'Advertiser', 'VAR/Reseller', 'Distributor', 'Developer', 'Broker', 'Lender', 'Supplier', 'Institution', 'Contractor', 'Dealer', 'Consultant') NULL,
    IsPrimary BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    ReversePartnerId VARCHAR(18) NULL
);

CREATE TABLE AccountShare (
    Id VARCHAR(18) PRIMARY KEY,
    AccountId VARCHAR(18) NOT NULL,
    UserOrGroupId VARCHAR(18) NOT NULL,
    AccountAccessLevel ENUM('Read', 'Edit', 'All') NOT NULL,
    OpportunityAccessLevel ENUM('None', 'Read', 'Edit') NOT NULL,
    CaseAccessLevel ENUM('None', 'Read', 'Edit') NOT NULL,
    ContactAccessLevel ENUM('None', 'Read', 'Edit') NULL,
    RowCause ENUM('Owner', 'Manual', 'Rule', 'ImplicitChild', 'ImplicitParent', 'ImplicitPerson', 'Team', 'Territory', 'TerritoryManual', 'TerritoryRule', 'Territory2Forecast') NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE ActivityHistory (
    Id VARCHAR(18) PRIMARY KEY,
    AccountId VARCHAR(18) NULL,
    WhoId VARCHAR(18) NULL,
    WhatId VARCHAR(18) NULL,
    Subject VARCHAR(80) NULL,
    IsTask BIT NOT NULL,
    ActivityDate DATE NULL,
    OwnerId VARCHAR(18) NULL,
    Status ENUM('Not Started', 'In Progress', 'Completed', 'Waiting on someone else', 'Deferred') NULL,
    Priority ENUM('High', 'Normal', 'Low') NULL,
    ActivityType ENUM('Call', 'Call', 'Email', 'Email', 'Meeting', 'Meeting', 'Other', 'Other') NULL,
    IsClosed BIT NOT NULL,
    IsAllDayEvent BIT NOT NULL,
    IsVisibleInSelfService BIT NOT NULL,
    DurationInMinutes INT(9) NULL,
    Location VARCHAR(80) NULL,
    Description VARCHAR(32000) NULL,
    IsDeleted BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CallDurationInSeconds INT(8) NULL,
    CallType ENUM('Internal', 'Inbound', 'Outbound') NULL,
    CallDisposition VARCHAR(255) NULL,
    CallObject VARCHAR(255) NULL,
    ReminderDateTime DATETIME NULL,
    IsReminderSet BIT NOT NULL,
    EndDateTime DATETIME NULL
);

CREATE TABLE AdditionalNumber (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    CallCenterId VARCHAR(18) NULL,
    Name VARCHAR(80) NOT NULL,
    Description VARCHAR(255) NULL,
    Phone VARCHAR(40) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE AggregateResult (
    Id VARCHAR(18) PRIMARY KEY
);

CREATE TABLE ApexClass (
    Id VARCHAR(18) PRIMARY KEY,
    NamespacePrefix VARCHAR(15) NULL,
    Name VARCHAR(255) NOT NULL,
    ApiVersion DECIMAL(18, 1) NOT NULL,
    Status ENUM('Inactive', 'Active', 'Deleted') NOT NULL,
    IsValid BIT NOT NULL,
    BodyCrc DECIMAL(18, 0) NULL,
    Body VARCHAR(1000000) NULL,
    LengthWithoutComments INT(9) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ApexComponent (
    Id VARCHAR(18) PRIMARY KEY,
    NamespacePrefix VARCHAR(15) NULL,
    Name VARCHAR(80) NOT NULL,
    ApiVersion DECIMAL(18, 1) NOT NULL,
    MasterLabel VARCHAR(80) NOT NULL,
    Description VARCHAR(4000) NULL,
    ControllerType ENUM('0', '1', '4', '2', '3', '5') NOT NULL,
    ControllerKey VARCHAR(255) NULL,
    Markup VARCHAR(1048576) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ApexLog (
    Id VARCHAR(18) PRIMARY KEY,
    LogUserId VARCHAR(18) NULL,
    LogLength INT(9) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    Request VARCHAR(16) NOT NULL,
    Operation VARCHAR(128) NOT NULL,
    Application VARCHAR(64) NOT NULL,
    Status VARCHAR(255) NOT NULL,
    DurationMilliseconds INT(9) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    StartTime DATETIME NOT NULL,
    Location ENUM('Monitoring', 'Profiling', 'SystemLog', 'HeapDump', 'Preserved') NULL
);

CREATE TABLE ApexPage (
    Id VARCHAR(18) PRIMARY KEY,
    NamespacePrefix VARCHAR(15) NULL,
    Name VARCHAR(80) NOT NULL,
    ApiVersion DECIMAL(18, 1) NOT NULL,
    MasterLabel VARCHAR(80) NOT NULL,
    Description VARCHAR(4000) NULL,
    ControllerType ENUM('0', '1', '4', '2', '3', '5') NOT NULL,
    ControllerKey VARCHAR(255) NULL,
    IsAvailableInTouch BIT NOT NULL,
    Markup VARCHAR(1048576) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ApexTestQueueItem (
    Id VARCHAR(18) PRIMARY KEY,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    ApexClassId VARCHAR(18) NOT NULL,
    Status ENUM('Queued', 'Processing', 'Aborted', 'Completed', 'Failed', 'Preparing', 'Holding') NOT NULL,
    ExtendedStatus VARCHAR(1000) NULL,
    ParentJobId VARCHAR(18) NULL
);

CREATE TABLE ApexTestResult (
    Id VARCHAR(18) PRIMARY KEY,
    SystemModstamp DATETIME NOT NULL,
    TestTimestamp DATETIME NOT NULL,
    Outcome ENUM('Pass', 'Fail', 'CompileFail', 'Skip') NOT NULL,
    ApexClassId VARCHAR(18) NOT NULL,
    MethodName VARCHAR(255) NULL,
    Message VARCHAR(4000) NULL,
    StackTrace VARCHAR(4000) NULL,
    AsyncApexJobId VARCHAR(18) NULL,
    QueueItemId VARCHAR(18) NULL,
    ApexLogId VARCHAR(18) NULL
);

CREATE TABLE ApexTrigger (
    Id VARCHAR(18) PRIMARY KEY,
    NamespacePrefix VARCHAR(15) NULL,
    Name VARCHAR(255) NOT NULL,
    TableEnumOrId ENUM('Account', 'Asset', 'AssetRelationship', 'AssetTokenEvent', 'AssistantRecommendation', 'Attachment', 'Campaign', 'CampaignMember', 'Case', 'CaseComment', 'ChatterMessage', 'CollaborationGroup', 'CollaborationGroupMember', 'CollaborationGroupRecord', 'Contact', 'ContentDistribution', 'ContentDocument', 'ContentDocumentLink', 'ContentVersion', 'Contract', 'DandBCompany', 'DuplicateRecordItem', 'DuplicateRecordSet', 'EmailMessage', 'EngagementHistoryRollup', 'Event', 'FeedComment', 'FeedItem', 'Goal', 'GoalLink', 'Idea', 'IdeaComment', 'Lead', 'ListEmailSentResult', 'Macro', 'Metric', 'MetricDataLink', 'Note', 'Opportunity', 'OpportunityLineItem', 'Order', 'OrderItem', 'OrgDeleteRequest', 'OrgLifecycleNotification', 'Partner', 'Pricebook2', 'Product2', 'QuickText', 'RecordOrigin', 'SocialPersona', 'Solution', 'StreamingChannel', 'Task', 'Topic', 'TopicAssignment', 'User', 'UserNavItem', 'UserProvAccount', 'UserProvAccountStaging', 'UserProvisioningLog', 'UserProvisioningRequest', 'UserProvMockTarget', 'WorkCoaching', 'WorkFeedback', 'WorkFeedbackQuestion', 'WorkFeedbackQuestionSet', 'WorkFeedbackRequest', 'WorkFeedbackTemplate', 'WorkPerformanceCycle') NULL,
    UsageBeforeInsert BIT NOT NULL,
    UsageAfterInsert BIT NOT NULL,
    UsageBeforeUpdate BIT NOT NULL,
    UsageAfterUpdate BIT NOT NULL,
    UsageBeforeDelete BIT NOT NULL,
    UsageAfterDelete BIT NOT NULL,
    UsageIsBulk BIT NOT NULL,
    UsageAfterUndelete BIT NOT NULL,
    ApiVersion DECIMAL(18, 1) NOT NULL,
    Status ENUM('Inactive', 'Active', 'Deleted') NOT NULL,
    IsValid BIT NOT NULL,
    BodyCrc DECIMAL(18, 0) NULL,
    Body VARCHAR(1000000) NULL,
    LengthWithoutComments INT(9) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE Asset (
    Id VARCHAR(18) PRIMARY KEY,
    ContactId VARCHAR(18) NULL,
    AccountId VARCHAR(18) NULL,
    Product2Id VARCHAR(18) NULL,
    IsCompetitorProduct BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    SerialNumber VARCHAR(80) NULL,
    InstallDate DATE NULL,
    PurchaseDate DATE NULL,
    UsageEndDate DATE NULL,
    Status ENUM('Shipped', 'Installed', 'Registered', 'Obsolete', 'Purchased') NULL,
    Price DECIMAL(18, 0) NULL,
    Quantity DECIMAL(12, 2) NULL,
    Description VARCHAR(32000) NULL
);

CREATE TABLE AssetFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE AssetHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    AssetId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('Account', 'AssetLevel', 'Name', 'Owner', 'AssetProvidedBy', 'AssetServicedBy', 'IsCompetitorProduct', 'Contact', 'created', 'Description', 'feedEvent', 'InstallDate', 'IsInternal', 'ownerAccepted', 'ownerAssignment', 'Parent', 'Price', 'Product2', 'PurchaseDate', 'Quantity', 'locked', 'unlocked', 'RootAsset', 'SerialNumber', 'Status', 'UsageEndDate') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE AssignmentRule (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(120) NULL,
    SobjectType ENUM('Case', 'Lead') NULL,
    Active BIT NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE AsyncApexJob (
    Id VARCHAR(18) PRIMARY KEY,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    JobType ENUM('Future', 'SharingRecalculation', 'ScheduledApex', 'BatchApex', 'BatchApexWorker', 'TestRequest', 'TestWorker', 'ApexToken', 'Queueable') NOT NULL,
    ApexClassId VARCHAR(18) NULL,
    Status ENUM('Queued', 'Processing', 'Aborted', 'Completed', 'Failed', 'Preparing', 'Holding') NOT NULL,
    JobItemsProcessed INT(9) NOT NULL,
    TotalJobItems INT(9) NULL,
    NumberOfErrors INT(9) NULL,
    CompletedDate DATETIME NULL,
    MethodName VARCHAR(255) NULL,
    ExtendedStatus VARCHAR(255) NULL,
    ParentJobId VARCHAR(18) NULL,
    LastProcessed VARCHAR(15) NULL,
    LastProcessedOffset INT(9) NULL
);

CREATE TABLE Attachment (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    ParentId VARCHAR(18) NOT NULL,
    Name VARCHAR(255) NOT NULL,
    IsPrivate BIT NOT NULL,
    ContentType VARCHAR(120) NULL,
    BodyLength INT(8) NULL,
    Body TEXT NOT NULL,
    OwnerId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    Description VARCHAR(500) NULL
);

CREATE TABLE AuthProvider (
    Id VARCHAR(18) PRIMARY KEY,
    CreatedDate DATETIME NOT NULL,
    ProviderType ENUM('Facebook', 'Janrain', 'Salesforce', 'OpenIdConnect', 'MicrosoftACS', 'LinkedIn', 'Twitter', 'Google', 'GitHub', 'Custom') NOT NULL,
    FriendlyName VARCHAR(32) NOT NULL,
    DeveloperName VARCHAR(32) NOT NULL,
    RegistrationHandlerId VARCHAR(18) NULL,
    ExecutionUserId VARCHAR(18) NULL,
    ConsumerKey VARCHAR(256) NULL,
    ConsumerSecret VARCHAR(100) NULL,
    ErrorUrl VARCHAR(500) NULL,
    AuthorizeUrl VARCHAR(1024) NULL,
    TokenUrl VARCHAR(1024) NULL,
    UserInfoUrl VARCHAR(1024) NULL,
    DefaultScopes VARCHAR(256) NULL
);

CREATE TABLE BrandTemplate (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    DeveloperName VARCHAR(80) NOT NULL,
    IsActive BIT NOT NULL,
    Description VARCHAR(1000) NULL,
    Value VARCHAR(32000) NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE BusinessHours (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    IsActive BIT NOT NULL,
    IsDefault BIT NOT NULL,
    SundayStartTime TIME NULL,
    SundayEndTime TIME NULL,
    MondayStartTime TIME NULL,
    MondayEndTime TIME NULL,
    TuesdayStartTime TIME NULL,
    TuesdayEndTime TIME NULL,
    WednesdayStartTime TIME NULL,
    WednesdayEndTime TIME NULL,
    ThursdayStartTime TIME NULL,
    ThursdayEndTime TIME NULL,
    FridayStartTime TIME NULL,
    FridayEndTime TIME NULL,
    SaturdayStartTime TIME NULL,
    SaturdayEndTime TIME NULL,
    TimeZoneSidKey ENUM('Pacific/Kiritimati', 'Pacific/Enderbury', 'Pacific/Tongatapu', 'Pacific/Chatham', 'Asia/Kamchatka', 'Pacific/Auckland', 'Pacific/Fiji', 'Pacific/Guadalcanal', 'Pacific/Norfolk', 'Australia/Lord_Howe', 'Australia/Brisbane', 'Australia/Sydney', 'Australia/Adelaide', 'Australia/Darwin', 'Asia/Seoul', 'Asia/Tokyo', 'Asia/Hong_Kong', 'Asia/Kuala_Lumpur', 'Asia/Manila', 'Asia/Shanghai', 'Asia/Singapore', 'Asia/Taipei', 'Australia/Perth', 'Asia/Bangkok', 'Asia/Ho_Chi_Minh', 'Asia/Jakarta', 'Asia/Rangoon', 'Asia/Dhaka', 'Asia/Kathmandu', 'Asia/Colombo', 'Asia/Kolkata', 'Asia/Karachi', 'Asia/Tashkent', 'Asia/Yekaterinburg', 'Asia/Kabul', 'Asia/Tehran', 'Asia/Dubai', 'Asia/Tbilisi', 'Africa/Nairobi', 'Asia/Baghdad', 'Asia/Jerusalem', 'Asia/Kuwait', 'Asia/Riyadh', 'Europe/Athens', 'Europe/Bucharest', 'Europe/Helsinki', 'Europe/Istanbul', 'Europe/Minsk', 'Europe/Moscow', 'Africa/Cairo', 'Africa/Johannesburg', 'Europe/Amsterdam', 'Europe/Berlin', 'Europe/Brussels', 'Europe/Paris', 'Europe/Prague', 'Europe/Rome', 'Africa/Algiers', 'Europe/Dublin', 'Europe/Lisbon', 'Europe/London', 'GMT', 'Atlantic/Cape_Verde', 'Atlantic/South_Georgia', 'America/St_Johns', 'America/Argentina/Buenos_Aires', 'America/Halifax', 'America/Santiago', 'America/Sao_Paulo', 'Atlantic/Bermuda', 'America/Caracas', 'America/Indiana/Indianapolis', 'America/New_York', 'America/Puerto_Rico', 'America/Bogota', 'America/Chicago', 'America/Lima', 'America/Mexico_City', 'America/Panama', 'America/Denver', 'America/El_Salvador', 'America/Los_Angeles', 'America/Phoenix', 'America/Tijuana', 'America/Anchorage', 'Pacific/Honolulu', 'Pacific/Niue', 'Pacific/Pago_Pago') NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL
);

CREATE TABLE BusinessProcess (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    Description VARCHAR(255) NULL,
    TableEnumOrId ENUM('Case', 'Lead', 'Opportunity', 'Solution') NOT NULL,
    IsActive BIT NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CallCenter (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    InternalName VARCHAR(240) NOT NULL,
    Version DECIMAL(18, 3) NULL,
    AdapterUrl VARCHAR(2000) NULL,
    CustomSettings VARCHAR(3000) NULL,
    SystemModstamp DATETIME NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL
);

CREATE TABLE Campaign (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    Name VARCHAR(80) NOT NULL,
    ParentId VARCHAR(18) NULL,
    Type ENUM('Conference', 'Webinar', 'Trade Show', 'Public Relations', 'Partners', 'Referral Program', 'Advertisement', 'Banner Ads', 'Direct Mail', 'Email', 'Telemarketing', 'Other') NULL,
    Status ENUM('Planned', 'In Progress', 'Completed', 'Aborted') NULL,
    StartDate DATE NULL,
    EndDate DATE NULL,
    ExpectedRevenue DECIMAL(18, 0) NULL,
    BudgetedCost DECIMAL(18, 0) NULL,
    ActualCost DECIMAL(18, 0) NULL,
    ExpectedResponse DECIMAL(10, 2) NULL,
    NumberSent DECIMAL(18, 0) NULL,
    IsActive BIT NOT NULL,
    Description VARCHAR(32000) NULL,
    NumberOfLeads INT(9) NOT NULL,
    NumberOfConvertedLeads INT(9) NOT NULL,
    NumberOfContacts INT(9) NOT NULL,
    NumberOfResponses INT(9) NOT NULL,
    NumberOfOpportunities INT(9) NOT NULL,
    NumberOfWonOpportunities INT(9) NOT NULL,
    AmountAllOpportunities DECIMAL(18, 0) NOT NULL,
    AmountWonOpportunities DECIMAL(18, 0) NOT NULL,
    OwnerId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    LastActivityDate DATE NULL,
    CampaignMemberRecordTypeId VARCHAR(18) NULL
);

CREATE TABLE CampaignFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE CampaignHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    CampaignId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('IsActive', 'ActualCost', 'BudgetedCost', 'CampaignMemberRecordType', 'Name', 'Owner', 'created', 'Description', 'EndDate', 'ExpectedResponse', 'ExpectedRevenue', 'feedEvent', 'NumberSent', 'ownerAccepted', 'ownerAssignment', 'Parent', 'locked', 'unlocked', 'StartDate', 'Status', 'Type') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE CampaignMember (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    CampaignId VARCHAR(18) NOT NULL,
    LeadId VARCHAR(18) NULL,
    ContactId VARCHAR(18) NULL,
    Status ENUM('Planned', 'Received', 'Responded', 'Sent') NULL,
    HasResponded BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    FirstRespondedDate DATE NULL
);

CREATE TABLE CampaignMemberStatus (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    CampaignId VARCHAR(18) NOT NULL,
    Label VARCHAR(765) NOT NULL,
    SortOrder INT(9) NULL,
    IsDefault BIT NOT NULL,
    HasResponded BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CampaignShare (
    Id VARCHAR(18) PRIMARY KEY,
    CampaignId VARCHAR(18) NOT NULL,
    UserOrGroupId VARCHAR(18) NOT NULL,
    CampaignAccessLevel ENUM('Read', 'Edit', 'All') NOT NULL,
    RowCause ENUM('Owner', 'Manual', 'Rule', 'ImplicitChild', 'ImplicitParent', 'ImplicitPerson', 'Team', 'Territory', 'TerritoryManual', 'TerritoryRule', 'Territory2Forecast') NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE Case (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    CaseNumber VARCHAR(30) NOT NULL,
    ContactId VARCHAR(18) NULL,
    AccountId VARCHAR(18) NULL,
    AssetId VARCHAR(18) NULL,
    ParentId VARCHAR(18) NULL,
    SuppliedName VARCHAR(80) NULL,
    SuppliedEmail VARCHAR(80) NULL,
    SuppliedPhone VARCHAR(40) NULL,
    SuppliedCompany VARCHAR(80) NULL,
    Type ENUM('Mechanical', 'Electrical', 'Electronic', 'Structural', 'Other') NULL,
    Status ENUM('New', 'Working', 'Escalated', 'Closed') NULL,
    Reason ENUM('Installation', 'Equipment Complexity', 'Performance', 'Breakdown', 'Equipment Design', 'Feedback', 'Other') NULL,
    Origin ENUM('Phone', 'Email', 'Web') NULL,
    Subject VARCHAR(255) NULL,
    Priority ENUM('High', 'Medium', 'Low') NULL,
    Description VARCHAR(32000) NULL,
    IsClosed BIT NOT NULL,
    ClosedDate DATETIME NULL,
    IsEscalated BIT NOT NULL,
    OwnerId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    EngineeringReqNumber__c VARCHAR(12) NULL,
    SLAViolation__c ENUM('No', 'Yes') NULL,
    Product__c ENUM('GC1040', 'GC1060', 'GC3020', 'GC3040', 'GC3060', 'GC5020', 'GC5040', 'GC5060', 'GC1020') NULL,
    PotentialLiability__c ENUM('No', 'Yes') NULL
);

CREATE TABLE CaseComment (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    IsPublished BIT NOT NULL,
    CommentBody VARCHAR(4000) NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE CaseContactRole (
    Id VARCHAR(18) PRIMARY KEY,
    CasesId VARCHAR(18) NOT NULL,
    ContactId VARCHAR(18) NOT NULL,
    Role ENUM('Technical Contact', 'Business Contact', 'Decision Maker', 'Other') NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE CaseFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE CaseHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    CaseId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('Account', 'Asset', 'BusinessHours', 'Origin', 'Owner', 'Reason', 'closed', 'IsClosedOnCreate', 'Contact', 'created', 'Description', 'EngineeringReqNumber__c', 'IsEscalated', 'feedEvent', 'ownerAccepted', 'ownerAssignment', 'ownerEscalated', 'Parent', 'PotentialLiability__c', 'Priority', 'Product__c', 'locked', 'unlocked', 'SLAViolation__c', 'Status', 'Subject', 'Type') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE CaseShare (
    Id VARCHAR(18) PRIMARY KEY,
    CaseId VARCHAR(18) NOT NULL,
    UserOrGroupId VARCHAR(18) NOT NULL,
    CaseAccessLevel ENUM('Read', 'Edit', 'All') NOT NULL,
    RowCause ENUM('Owner', 'Manual', 'Rule', 'ImplicitChild', 'ImplicitParent', 'ImplicitPerson', 'Team', 'Territory', 'TerritoryManual', 'TerritoryRule', 'Territory2Forecast') NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE CaseSolution (
    Id VARCHAR(18) PRIMARY KEY,
    CaseId VARCHAR(18) NOT NULL,
    SolutionId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE CaseStatus (
    Id VARCHAR(18) PRIMARY KEY,
    MasterLabel VARCHAR(255) NULL,
    SortOrder INT(9) NULL,
    IsDefault BIT NOT NULL,
    IsClosed BIT NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CaseTeamMember (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    MemberId VARCHAR(18) NOT NULL,
    TeamTemplateMemberId VARCHAR(18) NULL,
    TeamRoleId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CaseTeamRole (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    AccessLevel ENUM('None', 'Read', 'Edit') NOT NULL,
    PreferencesVisibleInCSP BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CaseTeamTemplate (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    Description VARCHAR(300) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CaseTeamTemplateMember (
    Id VARCHAR(18) PRIMARY KEY,
    TeamTemplateId VARCHAR(18) NOT NULL,
    MemberId VARCHAR(18) NOT NULL,
    TeamRoleId VARCHAR(18) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CaseTeamTemplateRecord (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    TeamTemplateId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CategoryData (
    Id VARCHAR(18) PRIMARY KEY,
    CategoryNodeId VARCHAR(18) NOT NULL,
    RelatedSobjectId VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CategoryNode (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NULL,
    MasterLabel VARCHAR(40) NOT NULL,
    SortOrder INT(8) NULL,
    SortStyle ENUM('custom', 'alphabetical') NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ChatterActivity (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NULL,
    PostCount INT(9) NOT NULL,
    CommentCount INT(9) NOT NULL,
    CommentReceivedCount INT(9) NOT NULL,
    LikeReceivedCount INT(9) NOT NULL,
    InfluenceRawRank INT(9) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ClientBrowser (
    Id VARCHAR(18) PRIMARY KEY,
    UsersId VARCHAR(18) NOT NULL,
    FullUserAgent VARCHAR(1024) NULL,
    ProxyInfo VARCHAR(1024) NULL,
    LastUpdate DATETIME NULL,
    CreatedDate DATETIME NOT NULL
);

CREATE TABLE CollaborationGroup (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(40) NOT NULL,
    MemberCount INT(9) NULL,
    OwnerId VARCHAR(18) NOT NULL,
    CollaborationType ENUM('Public', 'Private') NOT NULL,
    Description VARCHAR(1000) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    FullPhotoUrl VARCHAR(1024) NULL,
    SmallPhotoUrl VARCHAR(1024) NULL,
    LastFeedModifiedDate DATETIME NOT NULL,
    InformationTitle VARCHAR(30) NULL,
    InformationBody VARCHAR(4000) NULL,
    HasPrivateFieldsAccess BIT NOT NULL,
    CanHaveGuests BIT NOT NULL
);

CREATE TABLE CollaborationGroupFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE CollaborationGroupMember (
    Id VARCHAR(18) PRIMARY KEY,
    CollaborationGroupId VARCHAR(18) NOT NULL,
    MemberId VARCHAR(18) NOT NULL,
    CollaborationRole ENUM('Admin', 'Standard') NULL,
    NotificationFrequency ENUM('P', 'D', 'W', 'N') NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CollaborationGroupMemberRequest (
    Id VARCHAR(18) PRIMARY KEY,
    CollaborationGroupId VARCHAR(18) NOT NULL,
    RequesterId VARCHAR(18) NOT NULL,
    ResponseMessage VARCHAR(255) NULL,
    Status ENUM('Pending', 'Accepted', 'Declined') NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CollaborationInvitation (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NULL,
    SharedEntityId VARCHAR(18) NOT NULL,
    InviterId VARCHAR(18) NOT NULL,
    InvitedUserEmail VARCHAR(240) NOT NULL,
    InvitedUserEmailNormalized VARCHAR(80) NOT NULL,
    Status ENUM('Sent', 'Accepted', 'Canceled') NOT NULL,
    OptionalMessage VARCHAR(255) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE Community (
    Id VARCHAR(18) PRIMARY KEY,
    SystemModstamp DATETIME NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    Name VARCHAR(80) NOT NULL,
    Description VARCHAR(1000) NULL,
    IsActive BIT NOT NULL
);

CREATE TABLE Contact (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    MasterRecordId VARCHAR(18) NULL,
    AccountId VARCHAR(18) NULL,
    LastName VARCHAR(80) NOT NULL,
    FirstName VARCHAR(40) NULL,
    Salutation ENUM('Mr.', 'Ms.', 'Mrs.', 'Dr.', 'Prof.') NULL,
    Name VARCHAR(121) NOT NULL,
    OtherStreet VARCHAR(255) NULL,
    OtherCity VARCHAR(40) NULL,
    OtherState VARCHAR(80) NULL,
    OtherPostalCode VARCHAR(20) NULL,
    OtherCountry VARCHAR(80) NULL,
    MailingStreet VARCHAR(255) NULL,
    MailingCity VARCHAR(40) NULL,
    MailingState VARCHAR(80) NULL,
    MailingPostalCode VARCHAR(20) NULL,
    MailingCountry VARCHAR(80) NULL,
    Phone VARCHAR(40) NULL,
    Fax VARCHAR(40) NULL,
    MobilePhone VARCHAR(40) NULL,
    HomePhone VARCHAR(40) NULL,
    OtherPhone VARCHAR(40) NULL,
    AssistantPhone VARCHAR(40) NULL,
    ReportsToId VARCHAR(18) NULL,
    Email VARCHAR(80) NULL,
    Title VARCHAR(128) NULL,
    Department VARCHAR(80) NULL,
    AssistantName VARCHAR(40) NULL,
    LeadSource ENUM('Web', 'Phone Inquiry', 'Partner Referral', 'Purchased List', 'Other') NULL,
    Birthdate DATE NULL,
    Description VARCHAR(32000) NULL,
    OwnerId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    LastActivityDate DATE NULL,
    LastCURequestDate DATETIME NULL,
    LastCUUpdateDate DATETIME NULL,
    EmailBouncedReason VARCHAR(255) NULL,
    EmailBouncedDate DATETIME NULL,
    Jigsaw VARCHAR(20) NULL,
    JigsawContactId VARCHAR(20) NULL,
    CleanStatus ENUM('Matched', 'Different', 'Acknowledged', 'NotFound', 'Inactive', 'Pending', 'SelectMatch', 'Skipped') NULL,
    Level__c ENUM('Secondary', 'Tertiary', 'Primary') NULL,
    Languages__c VARCHAR(100) NULL
);

CREATE TABLE ContactFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE ContactHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    ContactId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('Account', 'AssistantName', 'AssistantPhone', 'Birthdate', 'CleanStatus', 'contactMerged', 'Owner', 'created', 'contactCreatedFromLead', 'Jigsaw', 'Department', 'Description', 'DoNotCall', 'Email', 'EmailBouncedDate', 'EmailBouncedReason', 'HasOptedOutOfEmail', 'Fax', 'HasOptedOutOfFax', 'feedEvent', 'FirstName', 'HomePhone', 'Languages__c', 'LastName', 'contactUpdatedByLead', 'LeadSource', 'Level__c', 'MailingAddress', 'MailingCity', 'MailingCountry', 'MailingGeocodeAccuracy', 'MailingLatitude', 'MailingLongitude', 'MailingState', 'MailingStreet', 'MailingPostalCode', 'MobilePhone', 'Name', 'OtherAddress', 'OtherCity', 'OtherCountry', 'OtherGeocodeAccuracy', 'OtherLatitude', 'OtherLongitude', 'OtherPhone', 'OtherState', 'OtherStreet', 'OtherPostalCode', 'ownerAccepted', 'ownerAssignment', 'Phone', 'locked', 'unlocked', 'ReportsTo', 'Salutation', 'Title') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE ContactShare (
    Id VARCHAR(18) PRIMARY KEY,
    ContactId VARCHAR(18) NOT NULL,
    UserOrGroupId VARCHAR(18) NOT NULL,
    ContactAccessLevel ENUM('Read', 'Edit', 'All') NOT NULL,
    RowCause ENUM('Owner', 'Manual', 'Rule', 'ImplicitChild', 'ImplicitParent', 'ImplicitPerson', 'Team', 'Territory', 'TerritoryManual', 'TerritoryRule', 'Territory2Forecast') NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE ContentDocument (
    Id VARCHAR(18) PRIMARY KEY,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    IsArchived BIT NOT NULL,
    ArchivedById VARCHAR(18) NULL,
    ArchivedDate DATE NULL,
    IsDeleted BIT NOT NULL,
    OwnerId VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    Title VARCHAR(255) NOT NULL,
    PublishStatus ENUM('U', 'P', 'R') NOT NULL,
    LatestPublishedVersionId VARCHAR(18) NULL,
    ParentId VARCHAR(18) NULL
);

CREATE TABLE ContentDocumentFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE ContentDocumentHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    ContentDocumentId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('ArchivedBy', 'ArchivedDate', 'ContentAsset', 'created', 'DeletedBy', 'DeletedDate', 'contentDocPublished', 'contentDocFeatured', 'contentDocRepublished', 'contentDocUnpublished', 'contentDocSubscribed', 'contentDocUnsubscribed', 'feedEvent', 'IsArchived', 'Owner', 'ownerAccepted', 'ownerAssignment', 'Parent', 'PublishStatus', 'locked', 'unlocked', 'Title') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE ContentDocumentLink (
    Id VARCHAR(18) PRIMARY KEY,
    LinkedEntityId VARCHAR(18) NOT NULL,
    ContentDocumentId VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    ShareType ENUM('V', 'C', 'I') NULL,
    Visibility ENUM('AllUsers', 'InternalUsers', 'SharedUsers') NULL
);

CREATE TABLE ContentVersion (
    Id VARCHAR(18) PRIMARY KEY,
    ContentDocumentId VARCHAR(18) NOT NULL,
    IsLatest BIT NOT NULL,
    ContentUrl VARCHAR(1333) NULL,
    VersionNumber VARCHAR(20) NULL,
    Title VARCHAR(255) NOT NULL,
    Description VARCHAR(1000) NULL,
    ReasonForChange VARCHAR(1000) NULL,
    PathOnClient VARCHAR(500) NULL,
    RatingCount INT(9) NULL,
    IsDeleted BIT NOT NULL,
    ContentModifiedDate DATETIME NULL,
    ContentModifiedById VARCHAR(18) NULL,
    PositiveRatingCount INT(9) NULL,
    NegativeRatingCount INT(9) NULL,
    FeaturedContentBoost INT(9) NULL,
    FeaturedContentDate DATE NULL,
    OwnerId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    TagCsv VARCHAR(2000) NULL,
    FileType VARCHAR(20) NOT NULL,
    PublishStatus ENUM('U', 'P', 'R') NOT NULL,
    VersionData TEXT NULL,
    ContentSize INT(9) NULL,
    FirstPublishLocationId VARCHAR(18) NULL,
    Origin ENUM('C', 'H') NOT NULL,
    ContentLocation ENUM('S', 'E', 'L') NOT NULL,
    ExternalDocumentInfo1 VARCHAR(1000) NULL,
    ExternalDocumentInfo2 VARCHAR(1000) NULL,
    ExternalDataSourceId VARCHAR(18) NULL,
    Checksum VARCHAR(50) NULL
);

CREATE TABLE ContentVersionHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    ContentVersionId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('ContentUrl', 'created', 'Description', 'ExternalDataSource', 'ExternalDocumentInfo1', 'ExternalDocumentInfo2', 'feedEvent', 'SharingPrivacy', 'Language', 'IsMajorVersion', 'Owner', 'ownerAccepted', 'ownerAssignment', 'SharingOption', 'ReasonForChange', 'locked', 'unlocked', 'Title', 'contentVersionCommented', 'contentVersionCreated', 'contentVersionDataReplaced', 'contentVersionDeleted', 'contentVersionDownloaded', 'contentVersionRated', 'contentVersionUpdated', 'contentVersionViewed') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE ContentWorkspace (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description VARCHAR(500) NULL,
    TagModel ENUM('U', 'G', 'R') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    DefaultRecordTypeId VARCHAR(18) NULL,
    IsRestrictContentTypes BIT NOT NULL,
    IsRestrictLinkedContentTypes BIT NOT NULL
);

CREATE TABLE ContentWorkspaceDoc (
    Id VARCHAR(18) PRIMARY KEY,
    ContentWorkspaceId VARCHAR(18) NOT NULL,
    ContentDocumentId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsOwner BIT NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE Contract (
    Id VARCHAR(18) PRIMARY KEY,
    AccountId VARCHAR(18) NOT NULL,
    Pricebook2Id VARCHAR(18) NULL,
    OwnerExpirationNotice ENUM('15', '30', '45', '60', '90', '120') NULL,
    StartDate DATE NULL,
    EndDate DATE NULL,
    BillingStreet VARCHAR(255) NULL,
    BillingCity VARCHAR(40) NULL,
    BillingState VARCHAR(80) NULL,
    BillingPostalCode VARCHAR(20) NULL,
    BillingCountry VARCHAR(80) NULL,
    ContractTerm INT(4) NULL,
    OwnerId VARCHAR(18) NOT NULL,
    Status ENUM('In Approval Process', 'Activated', 'Draft') NOT NULL,
    CompanySignedId VARCHAR(18) NULL,
    CompanySignedDate DATE NULL,
    CustomerSignedId VARCHAR(18) NULL,
    CustomerSignedTitle VARCHAR(40) NULL,
    CustomerSignedDate DATE NULL,
    SpecialTerms VARCHAR(4000) NULL,
    ActivatedById VARCHAR(18) NULL,
    ActivatedDate DATETIME NULL,
    StatusCode ENUM('Draft', 'InApproval', 'Activated', 'Terminated', 'Expired') NOT NULL,
    Description VARCHAR(32000) NULL,
    IsDeleted BIT NOT NULL,
    ContractNumber VARCHAR(30) NOT NULL,
    LastApprovedDate DATETIME NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    LastActivityDate DATE NULL
);

CREATE TABLE ContractContactRole (
    Id VARCHAR(18) PRIMARY KEY,
    ContractId VARCHAR(18) NOT NULL,
    ContactId VARCHAR(18) NOT NULL,
    Role ENUM('Business User', 'Decision Maker', 'Economic Buyer', 'Economic Decision Maker', 'Evaluator', 'Executive Sponsor', 'Influencer', 'Technical Buyer', 'Other') NULL,
    IsPrimary BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE ContractFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE ContractHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    ContractId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('Account', 'ActivatedBy', 'ActivatedDate', 'BillingAddress', 'BillingCity', 'BillingCountry', 'BillingGeocodeAccuracy', 'BillingLatitude', 'BillingLongitude', 'BillingState', 'BillingStreet', 'BillingPostalCode', 'CompanySigned', 'CompanySignedDate', 'contractActivation', 'contractConversion', 'contractDraft', 'EndDate', 'contractExpiration', 'contractApproval', 'Name', 'Owner', 'StartDate', 'ContractTerm', 'contractTermination', 'created', 'CustomerSigned', 'CustomerSignedDate', 'CustomerSignedTitle', 'Description', 'feedEvent', 'ownerAccepted', 'ownerAssignment', 'OwnerExpirationNotice', 'Pricebook2', 'locked', 'unlocked', 'ShippingAddress', 'ShippingCity', 'ShippingCountry', 'ShippingGeocodeAccuracy', 'ShippingLatitude', 'ShippingLongitude', 'ShippingState', 'ShippingStreet', 'ShippingPostalCode', 'SpecialTerms', 'Status') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE ContractStatus (
    Id VARCHAR(18) PRIMARY KEY,
    MasterLabel VARCHAR(255) NULL,
    SortOrder INT(9) NULL,
    IsDefault BIT NOT NULL,
    StatusCode ENUM('Draft', 'InApproval', 'Activated', 'Terminated', 'Expired') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE CronTrigger (
    Id VARCHAR(18) PRIMARY KEY,
    NextFireTime DATETIME NULL,
    PreviousFireTime DATETIME NULL,
    State VARCHAR(16) NULL,
    StartTime DATETIME NULL,
    EndTime DATETIME NULL,
    CronExpression VARCHAR(255) NULL,
    TimeZoneSidKey ENUM('Pacific/Kiritimati', 'Pacific/Enderbury', 'Pacific/Tongatapu', 'Pacific/Chatham', 'Asia/Kamchatka', 'Pacific/Auckland', 'Pacific/Fiji', 'Pacific/Guadalcanal', 'Pacific/Norfolk', 'Australia/Lord_Howe', 'Australia/Brisbane', 'Australia/Sydney', 'Australia/Adelaide', 'Australia/Darwin', 'Asia/Seoul', 'Asia/Tokyo', 'Asia/Hong_Kong', 'Asia/Kuala_Lumpur', 'Asia/Manila', 'Asia/Shanghai', 'Asia/Singapore', 'Asia/Taipei', 'Australia/Perth', 'Asia/Bangkok', 'Asia/Ho_Chi_Minh', 'Asia/Jakarta', 'Asia/Rangoon', 'Asia/Dhaka', 'Asia/Kathmandu', 'Asia/Colombo', 'Asia/Kolkata', 'Asia/Karachi', 'Asia/Tashkent', 'Asia/Yekaterinburg', 'Asia/Kabul', 'Asia/Tehran', 'Asia/Dubai', 'Asia/Tbilisi', 'Africa/Nairobi', 'Asia/Baghdad', 'Asia/Jerusalem', 'Asia/Kuwait', 'Asia/Riyadh', 'Europe/Athens', 'Europe/Bucharest', 'Europe/Helsinki', 'Europe/Istanbul', 'Europe/Minsk', 'Europe/Moscow', 'Africa/Cairo', 'Africa/Johannesburg', 'Europe/Amsterdam', 'Europe/Berlin', 'Europe/Brussels', 'Europe/Paris', 'Europe/Prague', 'Europe/Rome', 'Africa/Algiers', 'Europe/Dublin', 'Europe/Lisbon', 'Europe/London', 'GMT', 'Atlantic/Cape_Verde', 'Atlantic/South_Georgia', 'America/St_Johns', 'America/Argentina/Buenos_Aires', 'America/Halifax', 'America/Santiago', 'America/Sao_Paulo', 'Atlantic/Bermuda', 'America/Caracas', 'America/Indiana/Indianapolis', 'America/New_York', 'America/Puerto_Rico', 'America/Bogota', 'America/Chicago', 'America/Lima', 'America/Mexico_City', 'America/Panama', 'America/Denver', 'America/El_Salvador', 'America/Los_Angeles', 'America/Phoenix', 'America/Tijuana', 'America/Anchorage', 'Pacific/Honolulu', 'Pacific/Niue', 'Pacific/Pago_Pago') NULL,
    OwnerId VARCHAR(18) NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    TimesTriggered INT(9) NULL
);

CREATE TABLE CustomConsoleComponent (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    DeveloperName VARCHAR(80) NOT NULL,
    Language ENUM('en_US', 'de', 'es', 'fr', 'it', 'ja', 'sv', 'ko', 'zh_TW', 'zh_CN', 'pt_BR', 'nl_NL', 'da', 'th', 'fi', 'ru', 'es_MX', 'no') NULL,
    MasterLabel VARCHAR(80) NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    ButtonText VARCHAR(200) NULL,
    ButtonStyle VARCHAR(2000) NULL,
    ButtonIconUrl VARCHAR(255) NULL,
    ButtonWidth INT(9) NULL,
    AbsoluteWidth INT(9) NULL,
    RelativeWidth DECIMAL(3, 0) NULL,
    AbsoluteHeight INT(9) NULL,
    RelativeHeight DECIMAL(3, 0) NULL,
    IsWidthFixed BIT NOT NULL,
    IsHeightFixed BIT NOT NULL,
    IsHidden BIT NOT NULL,
    IsPopoutDisabled BIT NOT NULL,
    VisualforcePageId VARCHAR(18) NULL
);

CREATE TABLE DandBCompany (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    DunsNumber VARCHAR(9) NOT NULL,
    Street VARCHAR(255) NULL,
    City VARCHAR(40) NULL,
    State VARCHAR(80) NULL,
    PostalCode VARCHAR(20) NULL,
    Country VARCHAR(80) NULL,
    Phone VARCHAR(40) NULL,
    Fax VARCHAR(40) NULL,
    CountryAccessCode VARCHAR(4) NULL,
    PublicIndicator ENUM('Y', 'N') NULL,
    StockSymbol VARCHAR(6) NULL,
    StockExchange VARCHAR(16) NULL,
    SalesVolume DECIMAL(18, 0) NULL,
    URL VARCHAR(255) NULL,
    OutOfBusiness ENUM('Y', 'N') NULL,
    EmployeesTotal DECIMAL(18, 0) NULL,
    FipsMsaCode VARCHAR(5) NULL,
    FipsMsaDesc VARCHAR(255) NULL,
    TradeStyle1 VARCHAR(255) NULL,
    YearStarted VARCHAR(4) NULL,
    MailingStreet VARCHAR(255) NULL,
    MailingCity VARCHAR(40) NULL,
    MailingState VARCHAR(80) NULL,
    MailingPostalCode VARCHAR(20) NULL,
    MailingCountry VARCHAR(80) NULL,
    Latitude VARCHAR(11) NULL,
    Longitude VARCHAR(11) NULL,
    PrimarySic VARCHAR(4) NULL,
    PrimarySicDesc VARCHAR(80) NULL,
    SecondSic VARCHAR(4) NULL,
    SecondSicDesc VARCHAR(80) NULL,
    ThirdSic VARCHAR(4) NULL,
    ThirdSicDesc VARCHAR(80) NULL,
    FourthSic VARCHAR(4) NULL,
    FourthSicDesc VARCHAR(80) NULL,
    FifthSic VARCHAR(4) NULL,
    FifthSicDesc VARCHAR(80) NULL,
    SixthSic VARCHAR(4) NULL,
    SixthSicDesc VARCHAR(80) NULL,
    PrimaryNaics VARCHAR(6) NULL,
    PrimaryNaicsDesc VARCHAR(120) NULL,
    SecondNaics VARCHAR(6) NULL,
    SecondNaicsDesc VARCHAR(120) NULL,
    ThirdNaics VARCHAR(6) NULL,
    ThirdNaicsDesc VARCHAR(120) NULL,
    FourthNaics VARCHAR(6) NULL,
    FourthNaicsDesc VARCHAR(120) NULL,
    FifthNaics VARCHAR(6) NULL,
    FifthNaicsDesc VARCHAR(120) NULL,
    SixthNaics VARCHAR(6) NULL,
    SixthNaicsDesc VARCHAR(120) NULL,
    OwnOrRent ENUM('0', '1', '2') NULL,
    EmployeesHere DECIMAL(18, 0) NULL,
    EmployeesHereReliability ENUM('0', '1', '2', '3') NULL,
    SalesVolumeReliability ENUM('0', '1', '2', '3') NULL,
    CurrencyCode ENUM('0010', '0020', '0030', '0040', '0050', '0060', '0070', '0075', '0080', '0085', '0090', '0095', '0105', '0110', '0120', '0130', '0140', '0150', '0155', '0160', '0170', '0180', '0190', '0200', '0210', '0220', '0230', '0240', '0250', '0260', '0270', '0280', '0290', '0300', '0305', '0310', '0320', '0330', '0340', '0350', '0360', '0370', '0380', '0390', '0400', '0410', '0420', '0430', '0440', '0450', '0460', '0470', '0480', '0490', '0500', '0520', '0530', '0540', '0550', '0552', '0560', '0580', '0585', '0590', '0595', '0600', '0605', '0610', '0620', '0630', '0640', '0650', '0660', '0670', '0680', '0690', '0700', '0710', '0720', '0730', '0740', '0750', '0760', '0770', '0780', '0790', '0800', '0820', '0830', '0840', '0850', '0860', '0870', '0880', '0890', '0900', '0910', '0920', '0930', '0940', '0950', '0960', '0970', '0990', '1000', '1010', '1020', '1030', '1040', '1060', '1070', '1080', '1090', '2000', '2010', '2020', '2030', '2040', '2050', '2060', '2070', '2080', '2090', '3000', '3010', '3020', '3030', '3040', '3050', '3060', '3070', '3080', '3085', '3090', '4000', '4010', '4020', '4030', '4040', '4050', '4060', '4070', '4080', '4090', '5000', '5005', '5010', '5020', '5030', '5040', '5050', '5060', '5070', '5080', '5090', '6000', '6010', '6020', '6030', '6040', '6050', '6060', '6100', '6200', '6300', '6400', '6500', '6600', '6800', '6900', '7000', '7100', '7200', '7400', '7500', '7600', '7700', '7800', '7900', '8000', '8100', '8200', '8300', '8500', '8600', '8700', '8800', '8900', '9000', '9100', '9200', '9300', '9400', '9410', '9420', '9430', '9440', '9450', '9460', '9470') NULL,
    LegalStatus ENUM('100', '101', '118', '012', '120', '013', '003', '050', '008', '000', '009', '010', '011', '014', '015', '030', '070', '080', '090', '099', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '119', '121', '122', '125', '126', '127', '128', '129', '130', '131', '132', '133', '140', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '160', '161', '162', '163', '164', '166', '167', '168', '169', '170', '171', '180', '185', '186', '190', '200', '202', '204', '206', '208', '210', '212', '214', '216', '218', '220', '222', '224', '226', '228', '230', '232', '234', '236', '238', '240', '242', '244', '246', '248', '250', '252', '254', '256', '260', '270', '280', '290', '300', '301', '302', '304', '306', '308', '310', '312', '314', '316', '318', '320', '322', '324', '326', '328', '330', '332', '334', '336', '338', '340', '342', '344', '346', '350', '360', '370', '380', '390', '400', '410', '420', '430', '440', '450', '451', '452', '460', '470', '480', '490', '500', '502', '510', '520', '530', '540', '550', '560', '570', '580', '590', '600', '610', '620', '630', '640', '650', '660', '670', '680', '690', '700', '710', '720', '730', '740', '750', '755', '760', '770', '780', '790', '800', '810', '820', '830', '840', '850', '860', '870', '880', '881', '890', '891', '892', '893', '894', '895', '896', '900', '905', '910', '915', '920', '925', '930', '935', '940', '945', '950', '955', '960', '965', '970', '971', '972', '973', '974', '975', '976', '977', '978', '980', '985', '990', '991', '992', '993', '994', '995', '999') NULL,
    GlobalUltimateTotalEmployees DECIMAL(18, 0) NULL,
    EmployeesTotalReliability ENUM('0', '1', '2', '3') NULL,
    MinorityOwned ENUM('Y', 'N') NULL,
    WomenOwned ENUM('Y', 'N') NULL,
    SmallBusiness ENUM('Y', 'N') NULL,
    MarketingSegmentationCluster ENUM('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22') NULL,
    ImportExportAgent ENUM('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H') NULL,
    Subsidiary ENUM('0', '3') NULL,
    TradeStyle2 VARCHAR(255) NULL,
    TradeStyle3 VARCHAR(255) NULL,
    TradeStyle4 VARCHAR(255) NULL,
    TradeStyle5 VARCHAR(255) NULL,
    NationalId VARCHAR(255) NULL,
    NationalIdType ENUM('00010', '00011', '00100', '00102', '00103', '00104', '00105', '00106', '00107', '00108', '00109', '00110', '00111', '00112', '00113', '00115', '00119', '00012', '00120', '00125', '00127', '00013', '00130', '00135', '00014', '00140', '00145', '00155', '00016', '00165', '00017', '00175', '00018', '00185', '00019', '00195', '00020', '00200', '00021', '00210', '00211', '00212', '00022', '00220', '00230', '00024', '00240', '00025', '00250', '00026', '00260', '00270', '00281', '00282', '00283', '00284', '00285', '00286', '00290', '00030', '00300', '00301', '00302', '00303', '00304', '00305', '00306', '00307', '00308', '00309', '00031', '00310', '00311', '00312', '00313', '00314', '00315', '00316', '00317', '00318', '00032', '00320', '00321', '00322', '00323', '00324', '00325', '00033', '00034', '00035', '00036', '00040', '00045', '00050', '00521', '00522', '00523', '00524', '00525', '00526', '00527', '00528', '00529', '00530', '00531', '00532', '00533', '00534', '00535', '00536', '00537', '00538', '00539', '00540', '00541', '00542', '00543', '00544', '00545', '00546', '00547', '00548', '00549', '00055', '00550', '00551', '00552', '00553', '00554', '00555', '00556', '00557', '00558', '00559', '00560', '00561', '00562', '00563', '00564', '00565', '00566', '00567', '00568', '00569', '00570', '00571', '00572', '00573', '00574', '00575', '00576', '00577', '00578', '00579', '00580', '00581', '00582', '00583', '00584', '00585', '00586', '00587', '00588', '00589', '00590', '00591', '00592', '00593', '00594', '00595', '00596', '00597', '00598', '00599', '00060', '00600', '00601', '00602', '00603', '00604', '00605', '00610', '00620', '00630', '00640', '00065', '00650', '00660', '00670', '00070', '00702', '00075', '00080', '00090', '00095', '00042', '00043', '00122', '00330', '00335', '00340', '00345', '00350', '00355', '00360', '00710', '00715', '00720', '00740', '00362', '00142') NULL,
    UsTaxId VARCHAR(9) NULL,
    GeoCodeAccuracy ENUM('D', 'S', 'B', 'T', 'M', 'Z', '0', 'C', 'N', 'I', 'P', 'A', 'H', 'K', 'G', 'L') NULL,
    FamilyMembers INT(5) NULL,
    MarketingPreScreen ENUM('L', 'M', 'H') NULL,
    GlobalUltimateDunsNumber VARCHAR(9) NULL,
    GlobalUltimateBusinessName VARCHAR(255) NULL,
    ParentOrHqDunsNumber VARCHAR(9) NULL,
    ParentOrHqBusinessName VARCHAR(255) NULL,
    DomesticUltimateDunsNumber VARCHAR(9) NULL,
    DomesticUltimateBusinessName VARCHAR(255) NULL,
    LocationStatus ENUM('0', '1', '2') NULL,
    CompanyCurrencyIsoCode ENUM('ADP', 'AED', 'AFA', 'AFN', 'ALL', 'AMD', 'ANG', 'AOA', 'ARS', 'ATS', 'AUD', 'AWG', 'AZM', 'AZN', 'BAM', 'BBD', 'BDT', 'BEF', 'BGL', 'BGN', 'BHD', 'BIF', 'BMD', 'BND', 'BOB', 'BOV', 'BRL', 'BSD', 'BTN', 'BWP', 'BYB', 'BYN', 'BYR', 'BZD', 'CAD', 'CDF', 'CHF', 'CLF', 'CLP', 'CNY', 'COP', 'CRC', 'CSD', 'CUC', 'CUP', 'CVE', 'CYP', 'CZK', 'DEM', 'DJF', 'DKK', 'DOP', 'DZD', 'ECS', 'EEK', 'EGP', 'ERN', 'ESP', 'ETB', 'EUR', 'FIM', 'FJD', 'FKP', 'FRF', 'GBP', 'GEL', 'GHC', 'GHS', 'GIP', 'GMD', 'GNF', 'GRD', 'GTQ', 'GWP', 'GYD', 'HKD', 'HNL', 'HRD', 'HRK', 'HTG', 'HUF', 'IDR', 'IEP', 'ILS', 'INR', 'IQD', 'IRR', 'ISK', 'ITL', 'JMD', 'JOD', 'JPY', 'KES', 'KGS', 'KHR', 'KMF', 'KPW', 'KRW', 'KWD', 'KYD', 'KZT', 'LAK', 'LBP', 'LKR', 'LRD', 'LSL', 'LTL', 'LUF', 'LVL', 'LYD', 'MAD', 'MDL', 'MGA', 'MGF', 'MKD', 'MMK', 'MNT', 'MOP', 'MRO', 'MTL', 'MUR', 'MVR', 'MWK', 'MXN', 'MXV', 'MYR', 'MZM', 'MZN', 'NAD', 'NGN', 'NIO', 'NLG', 'NOK', 'NPR', 'NZD', 'OMR', 'PAB', 'PEN', 'PGK', 'PHP', 'PKR', 'PLN', 'PTE', 'PYG', 'QAR', 'RMB', 'ROL', 'RON', 'RSD', 'RUB', 'RUR', 'RWF', 'SAR', 'SBD', 'SCR', 'SDD', 'SDG', 'SEK', 'SGD', 'SHP', 'SIT', 'SKK', 'SLL', 'SOS', 'SRD', 'SRG', 'STD', 'SUR', 'SVC', 'SYP', 'SZL', 'THB', 'TJR', 'TJS', 'TMM', 'TMT', 'TND', 'TOP', 'TPE', 'TRL', 'TRY', 'TTD', 'TWD', 'TZS', 'UAH', 'UGX', 'USD', 'UYU', 'UZS', 'VEB', 'VEF', 'VND', 'VUV', 'WST', 'XAF', 'XCD', 'XOF', 'XPF', 'YER', 'YUM', 'ZAR', 'ZMK', 'ZMW', 'ZWD', 'ZWL') NULL,
    Description VARCHAR(32000) NULL
);

CREATE TABLE Dashboard (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    FolderId VARCHAR(18) NOT NULL,
    Title VARCHAR(80) NOT NULL,
    DeveloperName VARCHAR(80) NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    Description VARCHAR(255) NULL,
    LeftSize ENUM('Narrow', 'Medium', 'Wide') NOT NULL,
    MiddleSize ENUM('Narrow', 'Medium', 'Wide') NULL,
    RightSize ENUM('Narrow', 'Medium', 'Wide') NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    RunningUserId VARCHAR(18) NOT NULL,
    TitleColor INT(9) NOT NULL,
    TitleSize INT(9) NOT NULL,
    TextColor INT(9) NOT NULL,
    BackgroundStart INT(9) NOT NULL,
    BackgroundEnd INT(9) NOT NULL,
    BackgroundDirection ENUM('TopToBottom', 'LeftToRight', 'Diagonal') NOT NULL,
    Type ENUM('SpecifiedUser', 'LoggedInUser', 'MyTeamUser') NOT NULL
);

CREATE TABLE DashboardComponent (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NULL,
    DashboardId VARCHAR(18) NOT NULL
);

CREATE TABLE DashboardComponentFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE DashboardFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE Document (
    Id VARCHAR(18) PRIMARY KEY,
    FolderId VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    DeveloperName VARCHAR(80) NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    ContentType VARCHAR(120) NULL,
    Type VARCHAR(40) NULL,
    IsPublic BIT NOT NULL,
    BodyLength INT(8) NOT NULL,
    Body TEXT NULL,
    Url VARCHAR(255) NULL,
    Description VARCHAR(255) NULL,
    Keywords VARCHAR(255) NULL,
    IsInternalUseOnly BIT NOT NULL,
    AuthorId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsBodySearchable BIT NOT NULL
);

CREATE TABLE DocumentAttachmentMap (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    DocumentId VARCHAR(18) NOT NULL,
    DocumentSequence INT(9) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL
);

CREATE TABLE Domain (
    Id VARCHAR(18) PRIMARY KEY,
    DomainType ENUM('DNS', 'FacebookPage') NOT NULL,
    Domain VARCHAR(765) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE DomainSite (
    Id VARCHAR(18) PRIMARY KEY,
    DomainId VARCHAR(18) NOT NULL,
    SiteId VARCHAR(18) NOT NULL,
    PathPrefix VARCHAR(255) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE EmailMessage (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NULL,
    ActivityId VARCHAR(18) NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    TextBody VARCHAR(32000) NULL,
    HtmlBody VARCHAR(32000) NULL,
    Headers VARCHAR(32000) NULL,
    Subject VARCHAR(3000) NULL,
    FromName VARCHAR(1000) NULL,
    FromAddress VARCHAR(1000) NULL,
    ToAddress VARCHAR(4000) NULL,
    CcAddress VARCHAR(4000) NULL,
    BccAddress VARCHAR(4000) NULL,
    Incoming BIT NOT NULL,
    HasAttachment BIT NOT NULL,
    Status ENUM('0', '1', '2', '3', '4', '5') NOT NULL,
    MessageDate DATETIME NULL,
    IsDeleted BIT NOT NULL,
    ReplyToEmailMessageId VARCHAR(18) NULL
);

CREATE TABLE EmailServicesAddress (
    Id VARCHAR(18) PRIMARY KEY,
    IsActive BIT NOT NULL,
    LocalPart VARCHAR(64) NOT NULL,
    EmailDomainName VARCHAR(255) NULL,
    AuthorizedSenders VARCHAR(4000) NULL,
    RunAsUserId VARCHAR(18) NOT NULL,
    FunctionId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE EmailServicesFunction (
    Id VARCHAR(18) PRIMARY KEY,
    IsActive BIT NOT NULL,
    FunctionName VARCHAR(64) NOT NULL,
    AuthorizedSenders VARCHAR(4000) NULL,
    IsAuthenticationRequired BIT NOT NULL,
    IsTlsRequired BIT NOT NULL,
    AttachmentOption ENUM('0', '1', '2', '3', '4') NOT NULL,
    ApexClassId VARCHAR(18) NULL,
    OverLimitAction ENUM('0', '1', '2', '3') NULL,
    FunctionInactiveAction ENUM('0', '1', '2', '3') NULL,
    AddressInactiveAction ENUM('0', '1', '2', '3') NULL,
    AuthenticationFailureAction ENUM('0', '1', '2', '3') NULL,
    AuthorizationFailureAction ENUM('0', '1', '2', '3') NULL,
    IsErrorRoutingEnabled BIT NOT NULL,
    ErrorRoutingAddress VARCHAR(270) NULL,
    IsTextAttachmentsAsBinary BIT NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE EmailStatus (
    Id VARCHAR(18) PRIMARY KEY,
    TaskId VARCHAR(18) NOT NULL,
    WhoId VARCHAR(18) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    TimesOpened INT(9) NOT NULL,
    FirstOpenDate DATETIME NULL,
    LastOpenDate DATETIME NULL,
    EmailTemplateName VARCHAR(80) NULL
);

CREATE TABLE EmailTemplate (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    DeveloperName VARCHAR(80) NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    OwnerId VARCHAR(18) NOT NULL,
    FolderId VARCHAR(18) NOT NULL,
    BrandTemplateId VARCHAR(18) NULL,
    TemplateStyle ENUM('none', 'freeForm', 'formalLetter', 'promotionRight', 'promotionLeft', 'newsletter', 'products') NOT NULL,
    IsActive BIT NOT NULL,
    TemplateType ENUM('text', 'html', 'custom', 'visualforce') NOT NULL,
    Encoding ENUM('UTF-8', 'ISO-8859-1', 'Shift_JIS', 'ISO-2022-JP', 'EUC-JP', 'ks_c_5601-1987', 'Big5', 'GB2312', 'Big5-HKSCS', 'x-SJIS_0213') NULL,
    Description VARCHAR(4000) NULL,
    Subject VARCHAR(255) NULL,
    HtmlValue VARCHAR(384000) NULL,
    Body VARCHAR(384000) NULL,
    TimesUsed INT(9) NULL,
    LastUsedDate DATETIME NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    ApiVersion DECIMAL(18, 1) NULL,
    Markup VARCHAR(1048576) NULL
);

CREATE TABLE EntitySubscription (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    SubscriberId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE Event (
    Id VARCHAR(18) PRIMARY KEY,
    WhoId VARCHAR(18) NULL,
    WhatId VARCHAR(18) NULL,
    Subject VARCHAR(255) NULL,
    Location VARCHAR(255) NULL,
    IsAllDayEvent BIT NOT NULL,
    ActivityDateTime DATETIME NULL,
    ActivityDate DATE NULL,
    DurationInMinutes INT(8) NULL,
    StartDateTime DATETIME NULL,
    EndDateTime DATETIME NULL,
    Description VARCHAR(32000) NULL,
    AccountId VARCHAR(18) NULL,
    OwnerId VARCHAR(18) NOT NULL,
    IsPrivate BIT NOT NULL,
    ShowAs ENUM('Busy', 'OutOfOffice', 'Free') NULL,
    IsDeleted BIT NOT NULL,
    IsChild BIT NOT NULL,
    IsGroupEvent BIT NOT NULL,
    GroupEventType ENUM('0', '1', '2') NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsArchived BIT NOT NULL,
    RecurrenceActivityId VARCHAR(18) NULL,
    IsRecurrence BIT NOT NULL,
    RecurrenceStartDateTime DATETIME NULL,
    RecurrenceEndDateOnly DATE NULL,
    RecurrenceTimeZoneSidKey ENUM('Pacific/Kiritimati', 'Pacific/Enderbury', 'Pacific/Tongatapu', 'Pacific/Chatham', 'Asia/Kamchatka', 'Pacific/Auckland', 'Pacific/Fiji', 'Pacific/Guadalcanal', 'Pacific/Norfolk', 'Australia/Lord_Howe', 'Australia/Brisbane', 'Australia/Sydney', 'Australia/Adelaide', 'Australia/Darwin', 'Asia/Seoul', 'Asia/Tokyo', 'Asia/Hong_Kong', 'Asia/Kuala_Lumpur', 'Asia/Manila', 'Asia/Shanghai', 'Asia/Singapore', 'Asia/Taipei', 'Australia/Perth', 'Asia/Bangkok', 'Asia/Ho_Chi_Minh', 'Asia/Jakarta', 'Asia/Rangoon', 'Asia/Dhaka', 'Asia/Kathmandu', 'Asia/Colombo', 'Asia/Kolkata', 'Asia/Karachi', 'Asia/Tashkent', 'Asia/Yekaterinburg', 'Asia/Kabul', 'Asia/Tehran', 'Asia/Dubai', 'Asia/Tbilisi', 'Africa/Nairobi', 'Asia/Baghdad', 'Asia/Jerusalem', 'Asia/Kuwait', 'Asia/Riyadh', 'Europe/Athens', 'Europe/Bucharest', 'Europe/Helsinki', 'Europe/Istanbul', 'Europe/Minsk', 'Europe/Moscow', 'Africa/Cairo', 'Africa/Johannesburg', 'Europe/Amsterdam', 'Europe/Berlin', 'Europe/Brussels', 'Europe/Paris', 'Europe/Prague', 'Europe/Rome', 'Africa/Algiers', 'Europe/Dublin', 'Europe/Lisbon', 'Europe/London', 'GMT', 'Atlantic/Cape_Verde', 'Atlantic/South_Georgia', 'America/St_Johns', 'America/Argentina/Buenos_Aires', 'America/Halifax', 'America/Santiago', 'America/Sao_Paulo', 'Atlantic/Bermuda', 'America/Caracas', 'America/Indiana/Indianapolis', 'America/New_York', 'America/Puerto_Rico', 'America/Bogota', 'America/Chicago', 'America/Lima', 'America/Mexico_City', 'America/Panama', 'America/Denver', 'America/El_Salvador', 'America/Los_Angeles', 'America/Phoenix', 'America/Tijuana', 'America/Anchorage', 'Pacific/Honolulu', 'Pacific/Niue', 'Pacific/Pago_Pago') NULL,
    RecurrenceType ENUM('RecursDaily', 'RecursEveryWeekday', 'RecursMonthly', 'RecursMonthlyNth', 'RecursWeekly', 'RecursYearly', 'RecursYearlyNth') NULL,
    RecurrenceInterval INT(9) NULL,
    RecurrenceDayOfWeekMask INT(9) NULL,
    RecurrenceDayOfMonth INT(9) NULL,
    RecurrenceInstance ENUM('First', 'Second', 'Third', 'Fourth', 'Last') NULL,
    RecurrenceMonthOfYear ENUM('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December') NULL,
    ReminderDateTime DATETIME NULL,
    IsReminderSet BIT NOT NULL
);

CREATE TABLE EventFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE EventRelation (
    Id VARCHAR(18) PRIMARY KEY,
    RelationId VARCHAR(18) NOT NULL,
    EventId VARCHAR(18) NOT NULL,
    Status ENUM('New', 'Declined', 'Accepted', 'Uninvited', 'Maybe') NULL,
    RespondedDate DATETIME NULL,
    Response VARCHAR(255) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE ExternalDataSource (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    DeveloperName VARCHAR(80) NOT NULL,
    Language ENUM('en_US', 'de', 'es', 'fr', 'it', 'ja', 'sv', 'ko', 'zh_TW', 'zh_CN', 'pt_BR', 'nl_NL', 'da', 'th', 'fi', 'ru', 'es_MX', 'no') NOT NULL,
    MasterLabel VARCHAR(80) NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    Type ENUM('Datacloud', 'Datajourney', 'OData', 'OData4', 'OpenSearch', 'outgoingemail', 'SfdcOrg', 'SimpleURL') NOT NULL,
    Endpoint VARCHAR(1000) NULL,
    Repository VARCHAR(255) NULL,
    PrincipalType ENUM('Anonymous', 'PerUser', 'NamedUser') NOT NULL,
    ApiKey VARCHAR(128) NULL,
    LargeIconId VARCHAR(18) NULL,
    SmallIconId VARCHAR(18) NULL
);

CREATE TABLE ExternalDataUserAuth (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    ExternalDataSourceId VARCHAR(18) NOT NULL,
    UserId VARCHAR(18) NULL,
    Protocol ENUM('NoAuthentication', 'Oauth', 'Password') NULL,
    Username VARCHAR(255) NULL,
    Password VARCHAR(1200) NULL
);

CREATE TABLE FeedComment (
    Id VARCHAR(18) PRIMARY KEY,
    FeedItemId VARCHAR(18) NOT NULL,
    ParentId VARCHAR(18) NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CommentBody VARCHAR(10000) NOT NULL,
    IsDeleted BIT NOT NULL,
    InsertedById VARCHAR(18) NOT NULL,
    CommentType ENUM('TextComment', 'ContentComment') NULL,
    RelatedRecordId VARCHAR(18) NULL
);

CREATE TABLE FeedItem (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NOT NULL
);

CREATE TABLE FeedLike (
    Id VARCHAR(18) PRIMARY KEY,
    FeedItemId VARCHAR(18) NULL,
    FeedEntityId VARCHAR(18) NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    InsertedById VARCHAR(18) NOT NULL
);

CREATE TABLE FeedTrackedChange (
    Id VARCHAR(18) PRIMARY KEY,
    FeedItemId VARCHAR(18) NOT NULL,
    FieldName VARCHAR(120) NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE FieldPermissions (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    SobjectType ENUM('Account', 'Asset', 'AssetRelationship', 'Campaign', 'CampaignMember', 'Case', 'Contact', 'Contract', 'DuplicateRecordItem', 'DuplicateRecordSet', 'EmailMessage', 'Event', 'Goal', 'GoalLink', 'Idea', 'Lead', 'Macro', 'Metric', 'Opportunity', 'OpportunityLineItem', 'Order', 'OrderItem', 'Pricebook2', 'PricebookEntry', 'Product2', 'QuickText', 'Solution', 'Task', 'User', 'UserProvisioningRequest', 'WorkCoaching', 'WorkFeedback', 'WorkFeedbackQuestion', 'WorkFeedbackQuestionSet', 'WorkFeedbackRequest', 'WorkFeedbackTemplate', 'WorkPerformanceCycle') NOT NULL,
    Field ENUM('Account.AccountNumber', 'Account.AccountSource', 'Account.Active__c', 'Account.AnnualRevenue', 'Account.BillingAddress', 'Account.CleanStatus', 'Account.CustomerPriority__c', 'Account.DandbCompany', 'Account.Description', 'Account.DunsNumber', 'Account.Fax', 'Account.Industry', 'Account.Jigsaw', 'Account.NaicsCode', 'Account.NaicsDesc', 'Account.NumberOfEmployees', 'Account.NumberofLocations__c', 'Account.Ownership', 'Account.Parent', 'Account.Phone', 'Account.Rating', 'Account.ShippingAddress', 'Account.Sic', 'Account.SicDesc', 'Account.Site', 'Account.SLA__c', 'Account.SLAExpirationDate__c', 'Account.SLASerialNumber__c', 'Account.TickerSymbol', 'Account.Tradestyle', 'Account.Type', 'Account.UpsellOpportunity__c', 'Account.Website', 'Account.YearStarted', 'Asset.Account', 'Asset.AssetLevel', 'Asset.AssetProvidedBy', 'Asset.AssetServicedBy', 'Asset.Contact', 'Asset.Description', 'Asset.InstallDate', 'Asset.IsCompetitorProduct', 'Asset.IsInternal', 'Asset.Price', 'Asset.Product2', 'Asset.ProductCode', 'Asset.ProductDescription', 'Asset.ProductFamily', 'Asset.PurchaseDate', 'Asset.Quantity', 'Asset.SerialNumber', 'Asset.Status', 'Asset.StockKeepingUnit', 'Asset.UsageEndDate', 'AssetRelationship.RelationshipType', 'Campaign.ActualCost', 'Campaign.AmountAllOpportunities', 'Campaign.AmountWonOpportunities', 'Campaign.BudgetedCost', 'Campaign.Description', 'Campaign.EndDate', 'Campaign.ExpectedResponse', 'Campaign.ExpectedRevenue', 'Campaign.HierarchyActualCost', 'Campaign.HierarchyAmountAllOpportunities', 'Campaign.HierarchyAmountWonOpportunities', 'Campaign.HierarchyBudgetedCost', 'Campaign.HierarchyExpectedRevenue', 'Campaign.HierarchyNumberOfContacts', 'Campaign.HierarchyNumberOfConvertedLeads', 'Campaign.HierarchyNumberOfLeads', 'Campaign.HierarchyNumberOfOpportunities', 'Campaign.HierarchyNumberOfResponses', 'Campaign.HierarchyNumberOfWonOpportunities', 'Campaign.HierarchyNumberSent', 'Campaign.IsActive', 'Campaign.NumberOfContacts', 'Campaign.NumberOfConvertedLeads', 'Campaign.NumberOfLeads', 'Campaign.NumberOfOpportunities', 'Campaign.NumberOfResponses', 'Campaign.NumberOfWonOpportunities', 'Campaign.NumberSent', 'Campaign.Parent', 'Campaign.StartDate', 'Campaign.Status', 'Campaign.Type', 'Case.Account', 'Case.Asset', 'Case.BusinessHours', 'Case.ClosedDate', 'Case.Contact', 'Case.Description', 'Case.EngineeringReqNumber__c', 'Case.IsClosedOnCreate', 'Case.IsEscalated', 'Case.Origin', 'Case.Parent', 'Case.PotentialLiability__c', 'Case.Priority', 'Case.Product__c', 'Case.Reason', 'Case.SLAViolation__c', 'Case.Subject', 'Case.SuppliedCompany', 'Case.SuppliedEmail', 'Case.SuppliedName', 'Case.SuppliedPhone', 'Case.Type', 'Contact.Account', 'Contact.AssistantName', 'Contact.AssistantPhone', 'Contact.Birthdate', 'Contact.CleanStatus', 'Contact.Department', 'Contact.Description', 'Contact.DoNotCall', 'Contact.Email', 'Contact.Fax', 'Contact.HasOptedOutOfEmail', 'Contact.HasOptedOutOfFax', 'Contact.HomePhone', 'Contact.Jigsaw', 'Contact.Languages__c', 'Contact.LeadSource', 'Contact.Level__c', 'Contact.MailingAddress', 'Contact.MobilePhone', 'Contact.OtherAddress', 'Contact.OtherPhone', 'Contact.Phone', 'Contact.ReportsTo', 'Contact.Title', 'Contract.ActivatedBy', 'Contract.ActivatedDate', 'Contract.BillingAddress', 'Contract.CompanySigned', 'Contract.CompanySignedDate', 'Contract.ContractTerm', 'Contract.CustomerSigned', 'Contract.CustomerSignedDate', 'Contract.CustomerSignedTitle', 'Contract.Description', 'Contract.EndDate', 'Contract.Name', 'Contract.OwnerExpirationNotice', 'Contract.Pricebook2', 'Contract.ShippingAddress', 'Contract.SpecialTerms', 'Contract.StartDate', 'Event.Description', 'Event.IsAllDayEvent', 'Event.Location', 'Event.Type', 'Event.What', 'Event.Who', 'Goal.CompletionDate', 'Goal.IsKeyCompanyGoal', 'Goal.OrigGoalId__c', 'Idea.Attachment', 'Idea.Status', 'Lead.Address', 'Lead.AnnualRevenue', 'Lead.CleanStatus', 'Lead.CompanyDunsNumber', 'Lead.CurrentGenerators__c', 'Lead.DandbCompany', 'Lead.Description', 'Lead.DoNotCall', 'Lead.Email', 'Lead.Fax', 'Lead.HasOptedOutOfEmail', 'Lead.HasOptedOutOfFax', 'Lead.Industry', 'Lead.Jigsaw', 'Lead.LastTransferDate', 'Lead.LeadSource', 'Lead.MobilePhone', 'Lead.NumberOfEmployees', 'Lead.NumberofLocations__c', 'Lead.Phone', 'Lead.Primary__c', 'Lead.ProductInterest__c', 'Lead.Rating', 'Lead.SICCode__c', 'Lead.Title', 'Lead.Website', 'Metric.OrigMetricId__c', 'Opportunity.Account', 'Opportunity.Amount', 'Opportunity.Campaign', 'Opportunity.Contract', 'Opportunity.CurrentGenerators__c', 'Opportunity.DeliveryInstallationStatus__c', 'Opportunity.Description', 'Opportunity.ExpectedRevenue', 'Opportunity.IsPrivate', 'Opportunity.LeadSource', 'Opportunity.MainCompetitors__c', 'Opportunity.NextStep', 'Opportunity.OrderNumber__c', 'Opportunity.Probability', 'Opportunity.TotalOpportunityQuantity', 'Opportunity.TrackingNumber__c', 'Opportunity.Type', 'OpportunityLineItem.Description', 'OpportunityLineItem.Discount', 'OpportunityLineItem.ListPrice', 'OpportunityLineItem.ProductCode', 'OpportunityLineItem.ServiceDate', 'OpportunityLineItem.Subtotal', 'OpportunityLineItem.TotalPrice', 'Order.ActivatedBy', 'Order.ActivatedDate', 'Order.BillingAddress', 'Order.BillToContact', 'Order.CompanyAuthorizedBy', 'Order.CompanyAuthorizedDate', 'Order.ContractEndDate', 'Order.ContractName', 'Order.CustomerAuthorizedBy', 'Order.CustomerAuthorizedDate', 'Order.Description', 'Order.Name', 'Order.Opportunity', 'Order.OrderReferenceNumber', 'Order.PoDate', 'Order.PoNumber', 'Order.ShippingAddress', 'Order.ShipToContact', 'Order.TotalAmount', 'Order.Type', 'OrderItem.Description', 'OrderItem.EndDate', 'OrderItem.ListPrice', 'OrderItem.ProductCode', 'OrderItem.ServiceDate', 'Product2.Description', 'Product2.DisplayUrl', 'Product2.ExternalDataSource', 'Product2.ExternalId', 'Product2.Family', 'Product2.ProductCode', 'Product2.QuantityUnitOfMeasure', 'Product2.StockKeepingUnit', 'Solution.IsPublished', 'Solution.IsPublishedInPublicKb', 'Solution.SolutionNote', 'Task.ActivityDate', 'Task.Description', 'Task.Type', 'Task.What', 'Task.Who') NOT NULL,
    PermissionsEdit BIT NOT NULL,
    PermissionsRead BIT NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE FiscalYearSettings (
    Id VARCHAR(18) PRIMARY KEY,
    PeriodId VARCHAR(18) NULL,
    StartDate DATE NULL,
    EndDate DATE NULL,
    Name VARCHAR(80) NOT NULL,
    IsStandardYear BIT NOT NULL,
    YearType ENUM('Standard', 'Custom', 'Placeholder') NULL,
    QuarterLabelScheme ENUM('NumberByYear', 'Custom') NULL,
    PeriodLabelScheme ENUM('NumberByYear', 'NumberByQuarter', 'StandardMonths', 'Custom') NULL,
    WeekLabelScheme ENUM('NumberByYear', 'NumberByQuarter', 'NumberByPeriod') NULL,
    QuarterPrefix ENUM('Quarter', 'FQ', 'Q', 'Trimester') NULL,
    PeriodPrefix ENUM('Period', 'FP', 'P', 'Month') NULL,
    WeekStartDay INT(9) NULL,
    Description VARCHAR(255) NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE Folder (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(40) NOT NULL,
    DeveloperName VARCHAR(80) NULL,
    AccessType ENUM('Shared', 'Public', 'Hidden', 'PublicInternal') NOT NULL,
    IsReadonly BIT NOT NULL,
    Type ENUM('Document', 'Email', 'Report', 'Dashboard') NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ForecastShare (
    Id VARCHAR(18) PRIMARY KEY,
    UserRoleId VARCHAR(18) NOT NULL,
    UserOrGroupId VARCHAR(18) NOT NULL,
    AccessLevel ENUM('Read', 'Edit', 'All') NOT NULL,
    CanSubmit BIT NOT NULL,
    RowCause ENUM('Owner', 'Manual', 'Rule', 'ImplicitChild', 'ImplicitParent', 'ImplicitPerson', 'Team', 'Territory', 'TerritoryManual', 'TerritoryRule', 'Territory2Forecast') NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL
);

CREATE TABLE Group (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(40) NOT NULL,
    DeveloperName VARCHAR(80) NULL,
    RelatedId VARCHAR(18) NULL,
    Type ENUM('AllCustomerPortal', 'ChannelProgramGroup', 'CollaborationGroup', 'Manager', 'ManagerAndSubordinatesInternal', 'Organization', 'PRMOrganization', 'Queue', 'Regular', 'Role', 'RoleAndSubordinates', 'RoleAndSubordinatesInternal', 'Territory', 'TerritoryAndSubordinates') NOT NULL,
    Email VARCHAR(255) NULL,
    OwnerId VARCHAR(18) NOT NULL,
    DoesSendEmailToMembers BIT NOT NULL,
    DoesIncludeBosses BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE GroupMember (
    Id VARCHAR(18) PRIMARY KEY,
    GroupId VARCHAR(18) NOT NULL,
    UserOrGroupId VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE Holiday (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    Description VARCHAR(100) NULL,
    IsAllDay BIT NOT NULL,
    ActivityDate DATE NULL,
    StartTimeInMinutes INT(9) NULL,
    EndTimeInMinutes INT(9) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsRecurrence BIT NOT NULL,
    RecurrenceStartDate DATE NULL,
    RecurrenceEndDateOnly DATE NULL,
    RecurrenceType ENUM('RecursDaily', 'RecursEveryWeekday', 'RecursMonthly', 'RecursMonthlyNth', 'RecursWeekly', 'RecursYearly', 'RecursYearlyNth') NULL,
    RecurrenceInterval INT(9) NULL,
    RecurrenceDayOfWeekMask INT(9) NULL,
    RecurrenceDayOfMonth INT(9) NULL,
    RecurrenceInstance ENUM('First', 'Second', 'Third', 'Fourth', 'Last') NULL,
    RecurrenceMonthOfYear ENUM('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December') NULL
);

CREATE TABLE Idea (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    Title VARCHAR(255) NOT NULL,
    RecordTypeId VARCHAR(18) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommunityId VARCHAR(18) NOT NULL,
    Body VARCHAR(32000) NULL,
    NumComments INT(9) NULL,
    VoteScore DECIMAL(18, 4) NULL,
    VoteTotal DECIMAL(18, 0) NULL,
    Categories SET('#empty#') NULL,
    Status ENUM('#empty#') NULL,
    LastCommentDate DATETIME NULL,
    LastCommentId VARCHAR(18) NULL,
    ParentIdeaId VARCHAR(18) NULL,
    IsHtml BIT NOT NULL,
    IsMerged BIT NOT NULL
);

CREATE TABLE IdeaComment (
    Id VARCHAR(18) PRIMARY KEY,
    IdeaId VARCHAR(18) NOT NULL,
    CommentBody VARCHAR(4000) NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    IsHtml BIT NOT NULL
);

CREATE TABLE Lead (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    MasterRecordId VARCHAR(18) NULL,
    LastName VARCHAR(80) NOT NULL,
    FirstName VARCHAR(40) NULL,
    Salutation ENUM('Mr.', 'Ms.', 'Mrs.', 'Dr.', 'Prof.') NULL,
    Name VARCHAR(121) NOT NULL,
    Title VARCHAR(128) NULL,
    Company VARCHAR(255) NOT NULL,
    Street VARCHAR(255) NULL,
    City VARCHAR(40) NULL,
    State VARCHAR(80) NULL,
    PostalCode VARCHAR(20) NULL,
    Country VARCHAR(80) NULL,
    Phone VARCHAR(40) NULL,
    MobilePhone VARCHAR(40) NULL,
    Fax VARCHAR(40) NULL,
    Email VARCHAR(80) NULL,
    Website VARCHAR(255) NULL,
    Description VARCHAR(32000) NULL,
    LeadSource ENUM('Web', 'Phone Inquiry', 'Partner Referral', 'Purchased List', 'Other') NULL,
    Status ENUM('Open - Not Contacted', 'Working - Contacted', 'Closed - Converted', 'Closed - Not Converted') NOT NULL,
    Industry ENUM('Agriculture', 'Apparel', 'Banking', 'Biotechnology', 'Chemicals', 'Communications', 'Construction', 'Consulting', 'Education', 'Electronics', 'Energy', 'Engineering', 'Entertainment', 'Environmental', 'Finance', 'Food & Beverage', 'Government', 'Healthcare', 'Hospitality', 'Insurance', 'Machinery', 'Manufacturing', 'Media', 'Not For Profit', 'Recreation', 'Retail', 'Shipping', 'Technology', 'Telecommunications', 'Transportation', 'Utilities', 'Other') NULL,
    Rating ENUM('Hot', 'Warm', 'Cold') NULL,
    AnnualRevenue DECIMAL(18, 0) NULL,
    NumberOfEmployees INT(8) NULL,
    OwnerId VARCHAR(18) NOT NULL,
    IsConverted BIT NOT NULL,
    ConvertedDate DATE NULL,
    ConvertedAccountId VARCHAR(18) NULL,
    ConvertedContactId VARCHAR(18) NULL,
    ConvertedOpportunityId VARCHAR(18) NULL,
    IsUnreadByOwner BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    LastActivityDate DATE NULL,
    Jigsaw VARCHAR(20) NULL,
    JigsawContactId VARCHAR(20) NULL,
    CleanStatus ENUM('Matched', 'Different', 'Acknowledged', 'NotFound', 'Inactive', 'Pending', 'SelectMatch', 'Skipped') NULL,
    CompanyDunsNumber VARCHAR(9) NULL,
    DandbCompanyId VARCHAR(18) NULL,
    EmailBouncedReason VARCHAR(255) NULL,
    EmailBouncedDate DATETIME NULL,
    SICCode__c VARCHAR(15) NULL,
    ProductInterest__c ENUM('GC1000 series', 'GC5000 series', 'GC3000 series') NULL,
    Primary__c ENUM('No', 'Yes') NULL,
    CurrentGenerators__c VARCHAR(100) NULL,
    NumberofLocations__c DECIMAL(3, 0) NULL
);

CREATE TABLE LeadFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE LeadHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    LeadId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('Address', 'AnnualRevenue', 'City', 'CleanStatus', 'Company', 'CompanyDunsNumber', 'Country', 'created', 'CurrentGenerators__c', 'DandbCompany', 'Jigsaw', 'Description', 'DoNotCall', 'Email', 'EmailBouncedDate', 'EmailBouncedReason', 'HasOptedOutOfEmail', 'Fax', 'HasOptedOutOfFax', 'feedEvent', 'FirstName', 'GeocodeAccuracy', 'Industry', 'LastName', 'Latitude', 'leadConverted', 'leadMerged', 'Owner', 'LeadSource', 'Status', 'Longitude', 'MobilePhone', 'Name', 'NumberOfEmployees', 'NumberofLocations__c', 'ownerAccepted', 'ownerAssignment', 'Phone', 'Primary__c', 'ProductInterest__c', 'Rating', 'locked', 'unlocked', 'Salutation', 'SICCode__c', 'State', 'Street', 'Title', 'IsUnreadByOwner', 'Website', 'PostalCode') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE LeadShare (
    Id VARCHAR(18) PRIMARY KEY,
    LeadId VARCHAR(18) NOT NULL,
    UserOrGroupId VARCHAR(18) NOT NULL,
    LeadAccessLevel ENUM('Read', 'Edit', 'All') NOT NULL,
    RowCause ENUM('Owner', 'Manual', 'Rule', 'ImplicitChild', 'ImplicitParent', 'ImplicitPerson', 'Team', 'Territory', 'TerritoryManual', 'TerritoryRule', 'Territory2Forecast') NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE LeadStatus (
    Id VARCHAR(18) PRIMARY KEY,
    MasterLabel VARCHAR(255) NULL,
    SortOrder INT(9) NULL,
    IsDefault BIT NOT NULL,
    IsConverted BIT NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE LoginHistory (
    Id VARCHAR(18) PRIMARY KEY,
    UserId VARCHAR(18) NULL,
    LoginTime DATETIME NOT NULL,
    LoginType ENUM('#empty#') NOT NULL,
    SourceIp VARCHAR(39) NULL,
    LoginUrl VARCHAR(255) NULL,
    Browser VARCHAR(64) NULL,
    Platform VARCHAR(64) NULL,
    Status VARCHAR(128) NULL,
    Application VARCHAR(64) NULL,
    ClientVersion VARCHAR(64) NULL,
    ApiType VARCHAR(64) NULL,
    ApiVersion VARCHAR(32) NULL
);

CREATE TABLE LoginIp (
    Id VARCHAR(18) PRIMARY KEY,
    UsersId VARCHAR(18) NOT NULL,
    SourceIp VARCHAR(39) NULL,
    CreatedDate DATETIME NOT NULL,
    IsAuthenticated BIT NOT NULL,
    ChallengeSentDate DATETIME NULL
);

CREATE TABLE MailmergeTemplate (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    Name VARCHAR(80) NOT NULL,
    Description VARCHAR(255) NULL,
    Filename VARCHAR(255) NOT NULL,
    BodyLength INT(8) NULL,
    Body TEXT NOT NULL,
    LastUsedDate DATETIME NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    SecurityOptionsAttachmentScannedForXSS BIT NOT NULL,
    SecurityOptionsAttachmentHasXSSThreat BIT NOT NULL,
    SecurityOptionsAttachmentScannedforFlash BIT NOT NULL,
    SecurityOptionsAttachmentHasFlash BIT NOT NULL
);

CREATE TABLE Name (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(255) NULL,
    LastName VARCHAR(80) NULL,
    FirstName VARCHAR(40) NULL,
    Type ENUM('Account', 'AccountContactRole', 'Asset', 'Campaign', 'Case', 'CollaborationGroup', 'Contact', 'ContentDocument', 'ContentVersion', 'Contract', 'DandBCompany', 'Dashboard', 'DashboardComponent', 'Document', 'EmailMessage', 'Event', 'Idea', 'IdeaComment', 'Lead', 'Opportunity', 'Order', 'OrderItem', 'Pricebook2', 'Product2', 'Queue', 'QuickText', 'Report', 'SelfServiceUser', 'Solution', 'Task', 'Topic', 'User') NULL,
    Alias VARCHAR(8) NULL,
    UserRoleId VARCHAR(18) NULL,
    IsActive BIT NOT NULL,
    ProfileId VARCHAR(18) NULL,
    Title VARCHAR(80) NULL,
    Email VARCHAR(80) NULL,
    Phone VARCHAR(40) NULL,
    Username VARCHAR(80) NULL
);

CREATE TABLE Note (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    ParentId VARCHAR(18) NOT NULL,
    Title VARCHAR(80) NOT NULL,
    IsPrivate BIT NOT NULL,
    Body VARCHAR(32000) NULL,
    OwnerId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE NoteAndAttachment (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    IsNote BIT NOT NULL,
    ParentId VARCHAR(18) NOT NULL,
    Title VARCHAR(80) NULL,
    IsPrivate BIT NOT NULL,
    OwnerId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ObjectPermissions (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    SobjectType ENUM('Account', 'ActionPlan', 'ActionPlanTemplate', 'ActiveScratchOrg', 'AddOnDefinition', 'Address', 'AggregationRow', 'Asset', 'Campaign', 'Case', 'Certification', 'CertificationDef', 'CertificationSectionDef', 'CertificationStep', 'CertificationStepDef', 'ChannelProgram', 'ChannelProgramLevel', 'ChannelProgramMember', 'CloudServiceProvider', 'CloudServiceProviderApi', 'Contact', 'ContactPhone', 'Contract', 'ContractLineItem', 'DandBCompany', 'DataSharingCustomerLocal', 'Document', 'DuplicateRecordSet', 'EditionDefinition', 'Employee', 'EngagementProgram', 'EngagementProgramNode', 'EngagementProgramVersion', 'Entitlement', 'EntitlementContact', 'EnvironmentHubInvitation', 'EnvironmentHubMember', 'FtestAccountChild', 'FtestChild', 'FtestError', 'FtestErrorChild', 'FtestGrandChild', 'FtestHiddenName', 'FtestMain', 'FtestPerson', 'FtestVirtualMain', 'Goal', 'GoalLink', 'Idea', 'IdeaTheme', 'IdentityDocument', 'IncludedLicenseDefinition', 'Individual', 'Lead', 'LicensingError', 'LicensingRequest', 'LiveAgentSession', 'LiveChatTranscript', 'LiveChatVisitor', 'Location', 'Macro', 'MaintenancePlan', 'ManagementAddOnLicense', 'ManagementEditionLicense', 'ManagementPlatformLicense', 'ManagementUserLicense', 'MemberPlan', 'MessagingEndUser', 'MessagingSession', 'Metric', 'MetricDataLink', 'MyCustomObject', 'NamespaceRegistry', 'OperatingHours', 'Opportunity', 'Order', 'PartnerFundAllocation', 'PartnerFundClaim', 'PartnerFundRequest', 'PartnerMarketingBudget', 'PersonEducation', 'PersonEmployment', 'PersonList', 'PlatformLicenseDefinition', 'Pricebook2', 'Product2', 'ProductItem', 'ProductRequest', 'ProductTransfer', 'ProfileSkill', 'ProfileSkillEndorsement', 'ProfileSkillUser', 'PurchaserPlan', 'PurchaserPlanAssn', 'PushTopic', 'Question', 'QuickText', 'Quote', 'RegisteredMobileDevice', 'ReturnOrder', 'Scorecard', 'ScorecardAssociation', 'ScorecardMetric', 'ScratchOrgInfo', 'ServiceAppointment', 'ServiceContract', 'ServiceCrew', 'ServiceResource', 'ServiceTerritory', 'ShapeRepresentation', 'Shipment', 'SignupRequest', 'SocialPost', 'Solution', 'SOSSession', 'StreamingChannel', 'Survey', 'SurveyInvitation', 'SurveyResponse', 'Tenant', 'TenantParameterMap', 'TimeSheet', 'UsageEntitlement', 'UserLicenseDefinition', 'WorkCoaching', 'WorkFeedback', 'WorkFeedbackQuestion', 'WorkFeedbackQuestionSet', 'WorkFeedbackRequest', 'WorkFeedbackTemplate', 'WorkGoal', 'WorkGoalCollaborator', 'WorkGoalLink', 'WorkOrder', 'WorkPerformanceCycle', 'WorkReward', 'WorkRewardFund', 'WorkRewardFundType', 'WorkType', 'WorkUpgradeAction', 'WorkUpgradeCustomer', 'WorkUpgradeUser') NOT NULL,
    PermissionsCreate BIT NOT NULL,
    PermissionsRead BIT NOT NULL,
    PermissionsEdit BIT NOT NULL,
    PermissionsDelete BIT NOT NULL,
    PermissionsViewAllRecords BIT NOT NULL,
    PermissionsModifyAllRecords BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE OpenActivity (
    Id VARCHAR(18) PRIMARY KEY,
    AccountId VARCHAR(18) NULL,
    WhoId VARCHAR(18) NULL,
    WhatId VARCHAR(18) NULL,
    Subject VARCHAR(80) NULL,
    IsTask BIT NOT NULL,
    ActivityDate DATE NULL,
    OwnerId VARCHAR(18) NULL,
    Status ENUM('Not Started', 'In Progress', 'Completed', 'Waiting on someone else', 'Deferred') NULL,
    Priority ENUM('High', 'Normal', 'Low') NULL,
    ActivityType ENUM('Call', 'Call', 'Email', 'Email', 'Meeting', 'Meeting', 'Other', 'Other') NULL,
    IsClosed BIT NOT NULL,
    IsAllDayEvent BIT NOT NULL,
    IsVisibleInSelfService BIT NOT NULL,
    DurationInMinutes INT(9) NULL,
    Location VARCHAR(80) NULL,
    Description VARCHAR(32000) NULL,
    IsDeleted BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CallDurationInSeconds INT(8) NULL,
    CallType ENUM('Internal', 'Inbound', 'Outbound') NULL,
    CallDisposition VARCHAR(255) NULL,
    CallObject VARCHAR(255) NULL,
    ReminderDateTime DATETIME NULL,
    IsReminderSet BIT NOT NULL,
    EndDateTime DATETIME NULL
);

CREATE TABLE Opportunity (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    AccountId VARCHAR(18) NULL,
    IsPrivate BIT NOT NULL,
    Name VARCHAR(120) NOT NULL,
    Description VARCHAR(32000) NULL,
    StageName ENUM('Prospecting', 'Qualification', 'Needs Analysis', 'Value Proposition', 'Id. Decision Makers', 'Perception Analysis', 'Proposal/Price Quote', 'Negotiation/Review', 'Closed Won', 'Closed Lost') NOT NULL,
    Amount DECIMAL(18, 2) NULL,
    Probability DECIMAL(3, 0) NULL,
    ExpectedRevenue DECIMAL(18, 2) NULL,
    TotalOpportunityQuantity DECIMAL(18, 2) NULL,
    CloseDate DATE NOT NULL,
    Type ENUM('Existing Customer - Upgrade', 'Existing Customer - Replacement', 'Existing Customer - Downgrade', 'New Customer') NULL,
    NextStep VARCHAR(255) NULL,
    LeadSource ENUM('Web', 'Phone Inquiry', 'Partner Referral', 'Purchased List', 'Other') NULL,
    IsClosed BIT NOT NULL,
    IsWon BIT NOT NULL,
    ForecastCategory ENUM('Omitted', 'Pipeline', 'BestCase', 'Forecast', 'Closed') NOT NULL,
    ForecastCategoryName ENUM('Omitted', 'Pipeline', 'Best Case', 'Commit', 'Closed') NULL,
    CampaignId VARCHAR(18) NULL,
    HasOpportunityLineItem BIT NOT NULL,
    Pricebook2Id VARCHAR(18) NULL,
    OwnerId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    LastActivityDate DATE NULL,
    FiscalQuarter INT(8) NULL,
    FiscalYear INT(8) NULL,
    Fiscal VARCHAR(6) NULL,
    DeliveryInstallationStatus__c ENUM('In progress', 'Yet to begin', 'Completed') NULL,
    TrackingNumber__c VARCHAR(12) NULL,
    OrderNumber__c VARCHAR(8) NULL,
    CurrentGenerators__c VARCHAR(100) NULL,
    MainCompetitors__c VARCHAR(100) NULL
);

CREATE TABLE OpportunityCompetitor (
    Id VARCHAR(18) PRIMARY KEY,
    OpportunityId VARCHAR(18) NOT NULL,
    CompetitorName VARCHAR(40) NULL,
    Strengths VARCHAR(1000) NULL,
    Weaknesses VARCHAR(1000) NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE OpportunityContactRole (
    Id VARCHAR(18) PRIMARY KEY,
    OpportunityId VARCHAR(18) NOT NULL,
    ContactId VARCHAR(18) NOT NULL,
    Role ENUM('Business User', 'Decision Maker', 'Economic Buyer', 'Economic Decision Maker', 'Evaluator', 'Executive Sponsor', 'Influencer', 'Technical Buyer', 'Other') NULL,
    IsPrimary BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE OpportunityFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE OpportunityFieldHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    OpportunityId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('Account', 'Amount', 'CloseDate', 'Contract', 'created', 'opportunityCreatedFromLead', 'CurrentGenerators__c', 'DeliveryInstallationStatus__c', 'Description', 'feedEvent', 'ForecastCategoryName', 'LeadSource', 'MainCompetitors__c', 'NextStep', 'Name', 'Owner', 'OrderNumber__c', 'ownerAccepted', 'ownerAssignment', 'Campaign', 'IsPrivate', 'Probability', 'TotalOpportunityQuantity', 'locked', 'unlocked', 'StageName', 'TrackingNumber__c', 'Type') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE OpportunityHistory (
    Id VARCHAR(18) PRIMARY KEY,
    OpportunityId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    StageName ENUM('Prospecting', 'Qualification', 'Needs Analysis', 'Value Proposition', 'Id. Decision Makers', 'Perception Analysis', 'Proposal/Price Quote', 'Negotiation/Review', 'Closed Won', 'Closed Lost') NOT NULL,
    Amount DECIMAL(18, 2) NULL,
    ExpectedRevenue DECIMAL(18, 2) NULL,
    CloseDate DATE NULL,
    Probability DECIMAL(3, 0) NULL,
    ForecastCategory ENUM('Omitted', 'Pipeline', 'BestCase', 'Forecast', 'Closed') NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE OpportunityLineItem (
    Id VARCHAR(18) PRIMARY KEY,
    OpportunityId VARCHAR(18) NOT NULL,
    SortOrder INT(9) NULL,
    PricebookEntryId VARCHAR(18) NULL,
    Quantity DECIMAL(12, 2) NOT NULL,
    TotalPrice DECIMAL(18, 2) NULL,
    UnitPrice DECIMAL(18, 2) NULL,
    ListPrice DECIMAL(18, 2) NULL,
    ServiceDate DATE NULL,
    Description VARCHAR(255) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE OpportunityPartner (
    Id VARCHAR(18) PRIMARY KEY,
    OpportunityId VARCHAR(18) NOT NULL,
    AccountToId VARCHAR(18) NOT NULL,
    Role ENUM('System Integrator', 'Agency', 'Advertiser', 'VAR/Reseller', 'Distributor', 'Developer', 'Broker', 'Lender', 'Supplier', 'Institution', 'Contractor', 'Dealer', 'Consultant') NULL,
    IsPrimary BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    ReversePartnerId VARCHAR(18) NULL
);

CREATE TABLE OpportunityShare (
    Id VARCHAR(18) PRIMARY KEY,
    OpportunityId VARCHAR(18) NOT NULL,
    UserOrGroupId VARCHAR(18) NOT NULL,
    OpportunityAccessLevel ENUM('Read', 'Edit', 'All') NOT NULL,
    RowCause ENUM('Owner', 'Manual', 'Rule', 'ImplicitChild', 'ImplicitParent', 'ImplicitPerson', 'Team', 'Territory', 'TerritoryManual', 'TerritoryRule', 'Territory2Forecast') NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE OpportunityStage (
    Id VARCHAR(18) PRIMARY KEY,
    MasterLabel VARCHAR(255) NULL,
    IsActive BIT NOT NULL,
    SortOrder INT(9) NULL,
    IsClosed BIT NOT NULL,
    IsWon BIT NOT NULL,
    ForecastCategory ENUM('Omitted', 'Pipeline', 'BestCase', 'Forecast', 'Closed') NOT NULL,
    ForecastCategoryName ENUM('Omitted', 'Pipeline', 'Best Case', 'Commit', 'Closed') NOT NULL,
    DefaultProbability DECIMAL(3, 0) NULL,
    Description VARCHAR(255) NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE Order (
    Id VARCHAR(18) PRIMARY KEY,
    ContractId VARCHAR(18) NULL,
    AccountId VARCHAR(18) NULL,
    EffectiveDate DATE NOT NULL,
    EndDate DATE NULL,
    IsReductionOrder BIT NOT NULL,
    Status ENUM('Draft', 'Activated') NOT NULL,
    Description VARCHAR(32000) NULL,
    CustomerAuthorizedById VARCHAR(18) NULL,
    CustomerAuthorizedDate DATE NULL,
    CompanyAuthorizedById VARCHAR(18) NULL,
    CompanyAuthorizedDate DATE NULL,
    Type ENUM('#empty#') NULL,
    BillingStreet VARCHAR(255) NULL,
    BillingCity VARCHAR(40) NULL,
    BillingState VARCHAR(80) NULL,
    BillingPostalCode VARCHAR(20) NULL,
    BillingCountry VARCHAR(80) NULL,
    ShippingStreet VARCHAR(255) NULL,
    ShippingCity VARCHAR(40) NULL,
    ShippingState VARCHAR(80) NULL,
    ShippingPostalCode VARCHAR(20) NULL,
    ShippingCountry VARCHAR(80) NULL,
    Name VARCHAR(80) NULL,
    PoDate DATE NULL,
    PoNumber VARCHAR(80) NULL,
    OrderReferenceNumber VARCHAR(80) NULL,
    BillToContactId VARCHAR(18) NULL,
    ShipToContactId VARCHAR(18) NULL,
    ActivatedDate DATETIME NULL,
    ActivatedById VARCHAR(18) NULL,
    StatusCode ENUM('D', 'A', 'C', 'E') NOT NULL,
    OrderNumber VARCHAR(30) NOT NULL,
    TotalAmount DECIMAL(18, 2) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE OrderHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    OrderId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('Account', 'ActivatedBy', 'ActivatedDate', 'BillingAddress', 'BillingCity', 'BillingCountry', 'BillingGeocodeAccuracy', 'BillingLatitude', 'BillingLongitude', 'BillingState', 'BillingStreet', 'BillingPostalCode', 'BillToContact', 'CompanyAuthorizedBy', 'CompanyAuthorizedDate', 'Contract', 'created', 'CustomerAuthorizedBy', 'CustomerAuthorizedDate', 'Description', 'feedEvent', 'Opportunity', 'orderActivated', 'orderApproved', 'orderCancelled', 'orderDeactivated', 'EndDate', 'orderExpired', 'Name', 'Owner', 'OrderReferenceNumber', 'EffectiveDate', 'orderSubmitted', 'Type', 'ownerAccepted', 'ownerAssignment', 'PoDate', 'PoNumber', 'Pricebook2', 'locked', 'unlocked', 'ShippingAddress', 'ShippingCity', 'ShippingCountry', 'ShippingGeocodeAccuracy', 'ShippingLatitude', 'ShippingLongitude', 'ShippingState', 'ShippingStreet', 'ShippingPostalCode', 'ShipToContact', 'Status', 'StatusCode') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE OrderItem (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    OrderId VARCHAR(18) NOT NULL,
    PricebookEntryId VARCHAR(18) NOT NULL,
    OriginalOrderItemId VARCHAR(18) NULL,
    Quantity DECIMAL(18, 2) NOT NULL,
    UnitPrice DECIMAL(18, 2) NULL,
    ListPrice DECIMAL(18, 2) NULL,
    TotalPrice DECIMAL(18, 2) NULL,
    ServiceDate DATE NULL,
    EndDate DATE NULL,
    Description VARCHAR(255) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    OrderItemNumber VARCHAR(30) NOT NULL
);

CREATE TABLE OrderItemHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    OrderItemId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('created', 'EndDate', 'feedEvent', 'Description', 'ownerAccepted', 'ownerAssignment', 'Quantity', 'locked', 'unlocked', 'ServiceDate', 'UnitPrice') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE OrgWideEmailAddress (
    Id VARCHAR(18) PRIMARY KEY,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    Address VARCHAR(270) NOT NULL,
    DisplayName VARCHAR(300) NOT NULL,
    IsAllowAllProfiles BIT NOT NULL
);

CREATE TABLE Organization (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    Division VARCHAR(80) NULL,
    Street VARCHAR(255) NULL,
    City VARCHAR(40) NULL,
    State VARCHAR(80) NULL,
    PostalCode VARCHAR(20) NULL,
    Country VARCHAR(80) NULL,
    Phone VARCHAR(40) NULL,
    Fax VARCHAR(40) NULL,
    PrimaryContact VARCHAR(80) NULL,
    DefaultLocaleSidKey ENUM('sq_AL', 'ar_BH', 'ar_EG', 'ar_JO', 'ar_KW', 'ar_LB', 'ar_QA', 'ar_SA', 'ar_AE', 'hy_AM', 'az_AZ', 'bn_BD', 'eu_ES', 'be_BY', 'bs_BA', 'bg_BG', 'ca_ES', 'zh_CN', 'zh_HK', 'zh_MO', 'zh_SG', 'zh_TW', 'hr_HR', 'cs_CZ', 'da_DK', 'nl_BE', 'nl_NL', 'nl_SR', 'en_AU', 'en_BB', 'en_BM', 'en_CA', 'en_GH', 'en_IN', 'en_ID', 'en_IE', 'en_MY', 'en_NZ', 'en_NG', 'en_PK', 'en_PH', 'en_SG', 'en_ZA', 'en_GB', 'en_US', 'et_EE', 'fi_FI', 'fr_BE', 'fr_CA', 'fr_FR', 'fr_LU', 'fr_MC', 'fr_CH', 'ka_GE', 'de_AT', 'de_DE', 'de_LU', 'de_CH', 'el_GR', 'iw_IL', 'hi_IN', 'hu_HU', 'is_IS', 'in_ID', 'ga_IE', 'it_IT', 'it_CH', 'ja_JP', 'kk_KZ', 'km_KH', 'ko_KR', 'ky_KG', 'lv_LV', 'lt_LT', 'lb_LU', 'mk_MK', 'ms_BN', 'ms_MY', 'mt_MT', 'sh_ME', 'no_NO', 'pl_PL', 'pt_AO', 'pt_BR', 'pt_PT', 'ro_MD', 'ro_RO', 'rm_CH', 'ru_RU', 'sr_BA', 'sh_BA', 'sh_CS', 'sr_CS', 'sk_SK', 'sl_SI', 'es_AR', 'es_BO', 'es_CL', 'es_CO', 'es_CR', 'es_DO', 'es_EC', 'es_SV', 'es_GT', 'es_HN', 'es_MX', 'es_PA', 'es_PY', 'es_PE', 'es_PR', 'es_ES', 'es_UY', 'es_VE', 'sv_SE', 'tl_PH', 'tg_TJ', 'th_TH', 'tr_TR', 'uk_UA', 'ur_PK', 'vi_VN', 'cy_GB') NOT NULL,
    LanguageLocaleKey ENUM('en_US', 'de', 'es', 'fr', 'it', 'ja', 'sv', 'ko', 'zh_TW', 'zh_CN', 'pt_BR', 'nl_NL', 'da', 'th', 'fi', 'ru', 'es_MX', 'no') NOT NULL,
    ReceivesInfoEmails BIT NOT NULL,
    ReceivesAdminInfoEmails BIT NOT NULL,
    PreferencesRequireOpportunityProducts BIT NOT NULL,
    PreferencesTransactionSecurityPolicy BIT NOT NULL,
    PreferencesTerminateOldestSession BIT NOT NULL,
    FiscalYearStartMonth INT(9) NULL,
    UsesStartDateAsFiscalYearName BIT NOT NULL,
    DefaultAccountAccess ENUM('None', 'Read', 'Edit') NULL,
    DefaultContactAccess ENUM('None', 'Read', 'Edit', 'ControlledByParent') NULL,
    DefaultOpportunityAccess ENUM('None', 'Read', 'Edit') NULL,
    DefaultLeadAccess ENUM('None', 'Read', 'Edit', 'ReadEditTransfer') NULL,
    DefaultCaseAccess ENUM('None', 'Read', 'Edit', 'ReadEditTransfer') NULL,
    DefaultCalendarAccess ENUM('HideDetails', 'HideDetailsInsert', 'ShowDetails', 'ShowDetailsInsert', 'AllowEdits') NULL,
    DefaultPricebookAccess ENUM('None', 'Read', 'ReadSelect') NULL,
    DefaultCampaignAccess ENUM('None', 'Read', 'Edit', 'All') NULL,
    SystemModstamp DATETIME NOT NULL,
    ComplianceBccEmail VARCHAR(80) NULL,
    UiSkin ENUM('Theme1', 'Theme2', 'PortalDefault', 'Webstore', 'Theme3') NULL,
    SignupCountryIsoCode VARCHAR(2) NULL,
    TrialExpirationDate DATETIME NULL,
    OrganizationType ENUM('Team Edition', 'Professional Edition', 'Enterprise Edition', 'Developer Edition', 'Personal Edition', 'Unlimited Edition', 'Contact Manager Edition', 'Base Edition') NULL,
    WebToCaseDefaultOrigin VARCHAR(40) NULL,
    MonthlyPageViewsUsed INT(9) NULL,
    MonthlyPageViewsEntitlement INT(9) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL
);

CREATE TABLE Partner (
    Id VARCHAR(18) PRIMARY KEY,
    OpportunityId VARCHAR(18) NULL,
    AccountFromId VARCHAR(18) NULL,
    AccountToId VARCHAR(18) NOT NULL,
    Role ENUM('System Integrator', 'Agency', 'Advertiser', 'VAR/Reseller', 'Distributor', 'Developer', 'Broker', 'Lender', 'Supplier', 'Institution', 'Contractor', 'Dealer', 'Consultant') NULL,
    IsPrimary BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    ReversePartnerId VARCHAR(18) NULL
);

CREATE TABLE PartnerRole (
    Id VARCHAR(18) PRIMARY KEY,
    MasterLabel VARCHAR(255) NULL,
    SortOrder INT(9) NULL,
    ReverseRole ENUM('System Integrator', 'Agency', 'Advertiser', 'VAR/Reseller', 'Distributor', 'Developer', 'Broker', 'Lender', 'Supplier', 'Institution', 'Contractor', 'Dealer', 'Consultant') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE Period (
    Id VARCHAR(18) PRIMARY KEY,
    FiscalYearSettingsId VARCHAR(18) NULL,
    Type ENUM('Month', 'Quarter', 'Week', 'Year') NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsForecastPeriod BIT NOT NULL,
    QuarterLabel ENUM('Spring', 'Summer', 'Fall', 'Winter') NULL,
    PeriodLabel ENUM('#empty#') NULL,
    Number INT(9) NULL
);

CREATE TABLE PermissionSet (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    Label VARCHAR(80) NOT NULL,
    UserLicenseId VARCHAR(18) NULL,
    ProfileId VARCHAR(18) NULL,
    IsOwnedByProfile BIT NOT NULL,
    PermissionsEmailSingle BIT NOT NULL,
    PermissionsEmailMass BIT NOT NULL,
    PermissionsEditTask BIT NOT NULL,
    PermissionsEditEvent BIT NOT NULL,
    PermissionsExportReport BIT NOT NULL,
    PermissionsImportPersonal BIT NOT NULL,
    PermissionsDataExport BIT NOT NULL,
    PermissionsManageUsers BIT NOT NULL,
    PermissionsEditPublicTemplates BIT NOT NULL,
    PermissionsModifyAllData BIT NOT NULL,
    PermissionsManageCases BIT NOT NULL,
    PermissionsMassInlineEdit BIT NOT NULL,
    PermissionsEditKnowledge BIT NOT NULL,
    PermissionsManageKnowledge BIT NOT NULL,
    PermissionsManageSolutions BIT NOT NULL,
    PermissionsCustomizeApplication BIT NOT NULL,
    PermissionsEditReadonlyFields BIT NOT NULL,
    PermissionsRunReports BIT NOT NULL,
    PermissionsViewSetup BIT NOT NULL,
    PermissionsTransferAnyEntity BIT NOT NULL,
    PermissionsNewReportBuilder BIT NOT NULL,
    PermissionsActivateContract BIT NOT NULL,
    PermissionsActivateOrder BIT NOT NULL,
    PermissionsImportLeads BIT NOT NULL,
    PermissionsManageLeads BIT NOT NULL,
    PermissionsTransferAnyLead BIT NOT NULL,
    PermissionsViewAllData BIT NOT NULL,
    PermissionsEditPublicDocuments BIT NOT NULL,
    PermissionsViewEncryptedData BIT NOT NULL,
    PermissionsEditBrandTemplates BIT NOT NULL,
    PermissionsEditHtmlTemplates BIT NOT NULL,
    PermissionsChatterInternalUser BIT NOT NULL,
    PermissionsDeleteActivatedContract BIT NOT NULL,
    PermissionsChatterInviteExternalUsers BIT NOT NULL,
    PermissionsSendSitRequests BIT NOT NULL,
    PermissionsManageRemoteAccess BIT NOT NULL,
    PermissionsCanUseNewDashboardBuilder BIT NOT NULL,
    PermissionsManageCategories BIT NOT NULL,
    PermissionsConvertLeads BIT NOT NULL,
    PermissionsPasswordNeverExpires BIT NOT NULL,
    PermissionsUseTeamReassignWizards BIT NOT NULL,
    PermissionsEditActivatedOrders BIT NOT NULL,
    PermissionsInstallPackaging BIT NOT NULL,
    PermissionsPublishPackaging BIT NOT NULL,
    PermissionsChatterOwnGroups BIT NOT NULL,
    PermissionsEditOppLineItemUnitPrice BIT NOT NULL,
    PermissionsCreatePackaging BIT NOT NULL,
    PermissionsBulkApiHardDelete BIT NOT NULL,
    PermissionsSolutionImport BIT NOT NULL,
    PermissionsManageCallCenters BIT NOT NULL,
    PermissionsManageSynonyms BIT NOT NULL,
    PermissionsViewContent BIT NOT NULL,
    PermissionsManageEmailClientConfig BIT NOT NULL,
    PermissionsEnableNotifications BIT NOT NULL,
    PermissionsManageDataIntegrations BIT NOT NULL,
    PermissionsDistributeFromPersWksp BIT NOT NULL,
    PermissionsViewDataCategories BIT NOT NULL,
    PermissionsManageDataCategories BIT NOT NULL,
    PermissionsAuthorApex BIT NOT NULL,
    PermissionsManageMobile BIT NOT NULL,
    PermissionsApiEnabled BIT NOT NULL,
    PermissionsManageCustomReportTypes BIT NOT NULL,
    PermissionsEditCaseComments BIT NOT NULL,
    PermissionsTransferAnyCase BIT NOT NULL,
    PermissionsContentAdministrator BIT NOT NULL,
    PermissionsCreateWorkspaces BIT NOT NULL,
    PermissionsManageContentPermissions BIT NOT NULL,
    PermissionsManageContentProperties BIT NOT NULL,
    PermissionsManageContentTypes BIT NOT NULL,
    PermissionsManageAnalyticSnapshots BIT NOT NULL,
    PermissionsScheduleReports BIT NOT NULL,
    PermissionsManageBusinessHourHolidays BIT NOT NULL,
    PermissionsManageDynamicDashboards BIT NOT NULL,
    PermissionsCustomSidebarOnAllPages BIT NOT NULL,
    PermissionsManageInteraction BIT NOT NULL,
    PermissionsViewMyTeamsDashboards BIT NOT NULL,
    PermissionsModerateChatter BIT NOT NULL,
    PermissionsResetPasswords BIT NOT NULL,
    PermissionsFlowUFLRequired BIT NOT NULL,
    PermissionsCanInsertFeedSystemFields BIT NOT NULL,
    PermissionsManageKnowledgeImportExport BIT NOT NULL,
    PermissionsEmailTemplateManagement BIT NOT NULL,
    PermissionsEmailAdministration BIT NOT NULL,
    PermissionsManageChatterMessages BIT NOT NULL,
    PermissionsAllowEmailIC BIT NOT NULL,
    PermissionsChatterFileLink BIT NOT NULL,
    PermissionsManageNetworks BIT NOT NULL,
    PermissionsManageAuthProviders BIT NOT NULL,
    PermissionsRunFlow BIT NOT NULL,
    PermissionsViewAllUsers BIT NOT NULL,
    Description VARCHAR(255) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    NamespacePrefix VARCHAR(15) NULL
);

CREATE TABLE PermissionSetAssignment (
    Id VARCHAR(18) PRIMARY KEY,
    PermissionSetId VARCHAR(18) NULL,
    AssigneeId VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE Pricebook2 (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsActive BIT NOT NULL,
    Description VARCHAR(255) NULL,
    IsStandard BIT NOT NULL
);

CREATE TABLE Pricebook2History (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    Pricebook2Id VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('IsActive', 'IsArchived', 'created', 'Description', 'feedEvent', 'IsStandard', 'ownerAccepted', 'ownerAssignment', 'Name', 'locked', 'unlocked') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE PricebookEntry (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(255) NULL,
    Pricebook2Id VARCHAR(18) NOT NULL,
    Product2Id VARCHAR(18) NOT NULL,
    UnitPrice DECIMAL(18, 2) NOT NULL,
    IsActive BIT NOT NULL,
    UseStandardPrice BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    ProductCode VARCHAR(255) NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE ProcessDefinition (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(40) NOT NULL,
    DeveloperName VARCHAR(80) NOT NULL,
    Type ENUM('Approval', 'State') NOT NULL,
    Description VARCHAR(1000) NULL,
    TableEnumOrId ENUM('Account', 'Asset', 'AssetRelationship', 'AssistantProgress', 'Campaign', 'Case', 'Contact', 'Contract', 'DuplicateRecordItem', 'DuplicateRecordSet', 'EmailMessage', 'ExchangeUserMapping', 'Goal', 'KnowledgeArticle', 'KnowledgeArticleVersion', 'Lead', 'Metric', 'Opportunity', 'Order', 'OrgDeleteRequest', 'Product2', 'Solution', 'StreamingChannel', 'UserProvisioningRequest', 'WorkCoaching', 'WorkFeedback', 'WorkFeedbackQuestion', 'WorkFeedbackQuestionSet', 'WorkFeedbackRequest', 'WorkFeedbackTemplate', 'WorkPerformanceCycle') NOT NULL,
    LockType ENUM('Total', 'Admin', 'Owner', 'Workitem', 'Node', 'none') NOT NULL,
    State ENUM('Active', 'Inactive', 'Obsolete') NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ProcessInstance (
    Id VARCHAR(18) PRIMARY KEY,
    ProcessDefinitionId VARCHAR(18) NOT NULL,
    TargetObjectId VARCHAR(18) NOT NULL,
    Status ENUM('Approved', 'Rejected', 'Removed', 'Fault', 'Pending', 'Held', 'Reassigned', 'Started', 'NoResponse') NOT NULL,
    IsDeleted BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ProcessInstanceHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsPending BIT NOT NULL,
    ProcessInstanceId VARCHAR(18) NOT NULL,
    TargetObjectId VARCHAR(18) NULL,
    StepStatus ENUM('Approved', 'Rejected', 'Removed', 'Fault', 'Pending', 'Held', 'Reassigned', 'Started', 'NoResponse') NULL,
    OriginalActorId VARCHAR(18) NOT NULL,
    ActorId VARCHAR(18) NOT NULL,
    RemindersSent INT(9) NULL,
    Comments VARCHAR(4000) NULL,
    IsDeleted BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ProcessInstanceStep (
    Id VARCHAR(18) PRIMARY KEY,
    ProcessInstanceId VARCHAR(18) NOT NULL,
    StepStatus ENUM('Approved', 'Rejected', 'Removed', 'Fault', 'Pending', 'Held', 'Reassigned', 'Started', 'NoResponse') NULL,
    OriginalActorId VARCHAR(18) NOT NULL,
    ActorId VARCHAR(18) NOT NULL,
    Comments VARCHAR(4000) NULL,
    StepNodeId VARCHAR(18) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ProcessInstanceWorkitem (
    Id VARCHAR(18) PRIMARY KEY,
    ProcessInstanceId VARCHAR(18) NOT NULL,
    OriginalActorId VARCHAR(18) NOT NULL,
    ActorId VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ProcessNode (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    DeveloperName VARCHAR(80) NOT NULL,
    ProcessDefinitionId VARCHAR(18) NOT NULL,
    Description VARCHAR(1000) NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE Product2 (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    ProductCode VARCHAR(255) NULL,
    Description VARCHAR(4000) NULL,
    IsActive BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    Family ENUM('None') NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE Product2Feed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE Profile (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    PermissionsEmailSingle BIT NOT NULL,
    PermissionsEmailMass BIT NOT NULL,
    PermissionsEditTask BIT NOT NULL,
    PermissionsEditEvent BIT NOT NULL,
    PermissionsExportReport BIT NOT NULL,
    PermissionsImportPersonal BIT NOT NULL,
    PermissionsDataExport BIT NOT NULL,
    PermissionsManageUsers BIT NOT NULL,
    PermissionsEditPublicTemplates BIT NOT NULL,
    PermissionsModifyAllData BIT NOT NULL,
    PermissionsManageCases BIT NOT NULL,
    PermissionsMassInlineEdit BIT NOT NULL,
    PermissionsEditKnowledge BIT NOT NULL,
    PermissionsManageKnowledge BIT NOT NULL,
    PermissionsManageSolutions BIT NOT NULL,
    PermissionsCustomizeApplication BIT NOT NULL,
    PermissionsEditReadonlyFields BIT NOT NULL,
    PermissionsRunReports BIT NOT NULL,
    PermissionsViewSetup BIT NOT NULL,
    PermissionsTransferAnyEntity BIT NOT NULL,
    PermissionsNewReportBuilder BIT NOT NULL,
    PermissionsActivateContract BIT NOT NULL,
    PermissionsActivateOrder BIT NOT NULL,
    PermissionsImportLeads BIT NOT NULL,
    PermissionsManageLeads BIT NOT NULL,
    PermissionsTransferAnyLead BIT NOT NULL,
    PermissionsViewAllData BIT NOT NULL,
    PermissionsEditPublicDocuments BIT NOT NULL,
    PermissionsViewEncryptedData BIT NOT NULL,
    PermissionsEditBrandTemplates BIT NOT NULL,
    PermissionsEditHtmlTemplates BIT NOT NULL,
    PermissionsChatterInternalUser BIT NOT NULL,
    PermissionsDeleteActivatedContract BIT NOT NULL,
    PermissionsChatterInviteExternalUsers BIT NOT NULL,
    PermissionsSendSitRequests BIT NOT NULL,
    PermissionsManageRemoteAccess BIT NOT NULL,
    PermissionsCanUseNewDashboardBuilder BIT NOT NULL,
    PermissionsManageCategories BIT NOT NULL,
    PermissionsConvertLeads BIT NOT NULL,
    PermissionsPasswordNeverExpires BIT NOT NULL,
    PermissionsUseTeamReassignWizards BIT NOT NULL,
    PermissionsEditActivatedOrders BIT NOT NULL,
    PermissionsInstallMultiforce BIT NOT NULL,
    PermissionsPublishMultiforce BIT NOT NULL,
    PermissionsChatterOwnGroups BIT NOT NULL,
    PermissionsEditOppLineItemUnitPrice BIT NOT NULL,
    PermissionsCreateMultiforce BIT NOT NULL,
    PermissionsBulkApiHardDelete BIT NOT NULL,
    PermissionsSolutionImport BIT NOT NULL,
    PermissionsManageCallCenters BIT NOT NULL,
    PermissionsManageSynonyms BIT NOT NULL,
    PermissionsViewContent BIT NOT NULL,
    PermissionsManageEmailClientConfig BIT NOT NULL,
    PermissionsEnableNotifications BIT NOT NULL,
    PermissionsManageDataIntegrations BIT NOT NULL,
    PermissionsDistributeFromPersWksp BIT NOT NULL,
    PermissionsViewDataCategories BIT NOT NULL,
    PermissionsManageDataCategories BIT NOT NULL,
    PermissionsAuthorApex BIT NOT NULL,
    PermissionsManageMobile BIT NOT NULL,
    PermissionsApiEnabled BIT NOT NULL,
    PermissionsManageCustomReportTypes BIT NOT NULL,
    PermissionsEditCaseComments BIT NOT NULL,
    PermissionsTransferAnyCase BIT NOT NULL,
    PermissionsContentAdministrator BIT NOT NULL,
    PermissionsCreateWorkspaces BIT NOT NULL,
    PermissionsManageContentPermissions BIT NOT NULL,
    PermissionsManageContentProperties BIT NOT NULL,
    PermissionsManageContentTypes BIT NOT NULL,
    PermissionsManageAnalyticSnapshots BIT NOT NULL,
    PermissionsScheduleReports BIT NOT NULL,
    PermissionsManageBusinessHourHolidays BIT NOT NULL,
    PermissionsManageDynamicDashboards BIT NOT NULL,
    PermissionsCustomSidebarOnAllPages BIT NOT NULL,
    PermissionsManageInteraction BIT NOT NULL,
    PermissionsViewMyTeamsDashboards BIT NOT NULL,
    PermissionsModerateChatter BIT NOT NULL,
    PermissionsResetPasswords BIT NOT NULL,
    PermissionsFlowUFLRequired BIT NOT NULL,
    PermissionsCanInsertFeedSystemFields BIT NOT NULL,
    PermissionsManageKnowledgeImportExport BIT NOT NULL,
    PermissionsEmailTemplateManagement BIT NOT NULL,
    PermissionsEmailAdministration BIT NOT NULL,
    PermissionsManageChatterMessages BIT NOT NULL,
    PermissionsAllowEmailIC BIT NOT NULL,
    PermissionsChatterFileLink BIT NOT NULL,
    PermissionsManageNetworks BIT NOT NULL,
    PermissionsManageAuthProviders BIT NOT NULL,
    PermissionsRunFlow BIT NOT NULL,
    PermissionsViewAllUsers BIT NOT NULL,
    UserLicenseId VARCHAR(18) NOT NULL,
    UserType ENUM('Standard', 'PowerPartner', 'PowerCustomerSuccess', 'CustomerSuccess', 'Guest', 'CspLitePortal', 'CsnOnly', 'SelfService') NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    Description VARCHAR(255) NULL
);

CREATE TABLE PushTopic (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(25) NOT NULL,
    Query VARCHAR(1300) NOT NULL,
    ApiVersion DECIMAL(18, 1) NOT NULL,
    IsActive BIT NOT NULL,
    NotifyForFields ENUM('Select', 'Where', 'Referenced', 'All') NOT NULL,
    NotifyForOperations ENUM('Create', 'Update', 'All', 'Extended') NOT NULL,
    Description VARCHAR(400) NULL,
    IsDeleted BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE QueueSobject (
    Id VARCHAR(18) PRIMARY KEY,
    QueueId VARCHAR(18) NOT NULL,
    SobjectType ENUM('Case', 'Goal', 'Lead', 'Macro', 'Metric', 'Order', 'QuickText', 'Scorecard', 'UserProvisioningRequest', 'WorkCoaching', 'WorkFeedback', 'WorkFeedbackQuestion', 'WorkFeedbackQuestionSet', 'WorkFeedbackRequest', 'WorkFeedbackTemplate', 'WorkPerformanceCycle') NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE QuickText (
    Id VARCHAR(18) PRIMARY KEY,
    OwnerId VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    Message VARCHAR(4096) NOT NULL,
    Category ENUM('Greetings', 'FAQ', 'Closings') NULL,
    Channel SET('Email', 'Portal', 'Phone', 'Internal') NULL
);

CREATE TABLE QuickTextHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    QuickTextId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('Category', 'Channel', 'created', 'feedEvent', 'Message', 'Owner', 'ownerAccepted', 'ownerAssignment', 'Name', 'locked', 'unlocked') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE QuickTextShare (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    UserOrGroupId VARCHAR(18) NOT NULL,
    AccessLevel ENUM('Read', 'Edit', 'All') NOT NULL,
    RowCause ENUM('Owner', 'Manual', 'Rule', 'ImplicitChild', 'ImplicitParent', 'ImplicitPerson', 'Team', 'Territory', 'TerritoryManual', 'TerritoryRule', 'Territory2Forecast') NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL
);

CREATE TABLE QuoteTemplateRichTextData (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    Data VARCHAR(32000) NULL
);

CREATE TABLE RecordType (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    DeveloperName VARCHAR(80) NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    Description VARCHAR(255) NULL,
    BusinessProcessId VARCHAR(18) NULL,
    SobjectType ENUM('Account', 'Announcement', 'AssetRelationship', 'AssistantProgress', 'Campaign', 'CampaignMember', 'Case', 'CollaborationGroupRank', 'CollaborationGroupRecord', 'ComponentResponseCache', 'Contact', 'ContentVersion', 'Contract', 'CustomSettingNameIndex', 'DuplicateErrorLog', 'DuplicateRecordItem', 'DuplicateRecordSet', 'Event', 'FileSearchActivity', 'FlowRecordRelation', 'FlowStageRelation', 'Goal', 'GoalLink', 'Idea', 'InboundSocialPost', 'Lead', 'ListEmail', 'ListEmailRecipientSource', 'ListEmailSentResult', 'Macro', 'MacroAction', 'MacroInstruction', 'ManagedContentBlock', 'ManagedContentBlockVersion', 'Metric', 'MetricDataLink', 'Opportunity', 'Order', 'OrgDeleteRequest', 'Pricebook2', 'Product2', 'QuickText', 'RecordOrigin', 'Scorecard', 'ScorecardAssociation', 'ScorecardMetric', 'SearchActivity', 'SearchPromotionRule', 'SetupAssistantAnswer', 'SetupAssistantProgress', 'Solution', 'SyncTransactionLog', 'Task', 'TransactionSecurityAction', 'TransactionSecurityActionEvent', 'UserMetrics', 'UserNavItem', 'WorkCoaching', 'WorkFeedback', 'WorkFeedbackQuestion', 'WorkFeedbackQuestionSet', 'WorkFeedbackRequest', 'WorkFeedbackTemplate', 'WorkPerformanceCycle') NOT NULL,
    IsActive BIT NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE Report (
    Id VARCHAR(18) PRIMARY KEY,
    OwnerId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    IsDeleted BIT NOT NULL,
    Name VARCHAR(40) NOT NULL,
    Description VARCHAR(255) NULL,
    DeveloperName VARCHAR(80) NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    LastRunDate DATETIME NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE ReportFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE Scontrol (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    DeveloperName VARCHAR(80) NOT NULL,
    Description VARCHAR(255) NULL,
    EncodingKey ENUM('UTF-8', 'ISO-8859-1', 'Shift_JIS', 'ISO-2022-JP', 'EUC-JP', 'ks_c_5601-1987', 'Big5', 'GB2312', 'Big5-HKSCS', 'x-SJIS_0213') NOT NULL,
    HtmlWrapper VARCHAR(1048576) NOT NULL,
    Filename VARCHAR(255) NULL,
    BodyLength INT(8) NOT NULL,
    Binary TEXT NULL,
    ContentSource ENUM('HTML', 'URL', 'Snippet') NULL,
    SupportsCaching BIT NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE SetupAuditTrail (
    Id VARCHAR(18) PRIMARY KEY,
    Action VARCHAR(120) NOT NULL,
    Section VARCHAR(40) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    Display VARCHAR(1000) NULL
);

CREATE TABLE SetupEntityAccess (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    SetupEntityId VARCHAR(18) NOT NULL,
    SetupEntityType ENUM('ApexClass', 'ApexPage', 'ExternalDataSource') NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE Site (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    Subdomain VARCHAR(80) NULL,
    UrlPathPrefix VARCHAR(40) NULL,
    Status ENUM('Active', 'Inactive') NOT NULL,
    AdminId VARCHAR(18) NOT NULL,
    OptionsEnableFeeds BIT NOT NULL,
    OptionsAllowHomePage BIT NOT NULL,
    OptionsAllowStandardIdeasPages BIT NOT NULL,
    OptionsAllowStandardSearch BIT NOT NULL,
    OptionsAllowStandardLookups BIT NOT NULL,
    OptionsAllowStandardAnswersPages BIT NOT NULL,
    Description VARCHAR(1000) NULL,
    MasterLabel VARCHAR(255) NOT NULL,
    AnalyticsTrackingCode VARCHAR(40) NULL,
    SiteType ENUM('Siteforce', 'Visualforce', 'User') NOT NULL,
    DailyBandwidthLimit INT(9) NULL,
    DailyBandwidthUsed INT(9) NULL,
    DailyRequestTimeLimit INT(9) NULL,
    DailyRequestTimeUsed INT(9) NULL,
    MonthlyPageViewsEntitlement INT(9) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE SiteFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE SiteHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    SiteId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('siteActive', 'IndexPage', 'SiteAllowStandardPortalPages', 'AnalyticsTrackingCode', 'siteOverride401', 'siteOverrideChangePassword', 'ClickjackProtectionLevel', 'created', 'SiteDeleteDomain', 'siteNewDomain', 'TopLevelDomain', 'DefaultDomain', 'siteSetPrimaryDomain', 'UrlPathPrefix', 'siteBTDisabled', 'siteEnableFeeds', 'siteAllowStandardAnswersPages', 'siteAllowHomePage', 'siteAllowStandardIdeasPages', 'siteAllowStandardSearch', 'siteAllowStandardLookups', 'feedEvent', 'siteOverrideForgotPassword', 'siteOverride500', 'GuestUser', 'siteOverrideInactive', 'siteOverride509', 'siteOverride503', 'sitePageLimitExceeded', 'siteOverrideMyProfile', 'NewPassTemplate', 'NewUserTemplate', 'Options', 'ownerAccepted', 'ownerAssignment', 'siteOverride404', 'Portal', 'locked', 'unlocked', 'siteNewRedirect', 'siteDeleteRedirect', 'siteChangeRedirect', 'siteRequireInsecurePortalAccess', 'siteRequireHttps', 'siteOverrideSelfReg', 'ServerIsDown', 'Admin', 'Description', 'FavoriteIcon', 'MasterLabel', 'Language', 'Name', 'siteOverrideRobotsTxt', 'Status', 'Subdomain', 'siteOverrideTemplate', 'SiteType', 'Guid', 'UrlRewriterClass') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE Solution (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    SolutionNumber VARCHAR(30) NOT NULL,
    SolutionName VARCHAR(255) NOT NULL,
    IsPublished BIT NOT NULL,
    IsPublishedInPublicKb BIT NOT NULL,
    Status ENUM('Draft', 'Reviewed', 'Duplicate') NOT NULL,
    IsReviewed BIT NOT NULL,
    SolutionNote VARCHAR(32000) NULL,
    OwnerId VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    TimesUsed INT(9) NOT NULL,
    IsHtml BIT NOT NULL
);

CREATE TABLE SolutionFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE SolutionHistory (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    SolutionId VARCHAR(18) NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    Field ENUM('created', 'feedEvent', 'ownerAccepted', 'ownerAssignment', 'IsPublished', 'locked', 'unlocked', 'SolutionNote', 'SolutionName', 'Status', 'IsPublishedInPublicKb') NOT NULL,
    OldValue TEXT NULL,
    NewValue TEXT NULL
);

CREATE TABLE SolutionStatus (
    Id VARCHAR(18) PRIMARY KEY,
    MasterLabel VARCHAR(255) NULL,
    SortOrder INT(9) NULL,
    IsDefault BIT NOT NULL,
    IsReviewed BIT NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE StaticResource (
    Id VARCHAR(18) PRIMARY KEY,
    NamespacePrefix VARCHAR(15) NULL,
    Name VARCHAR(255) NOT NULL,
    ContentType VARCHAR(120) NOT NULL,
    BodyLength INT(8) NOT NULL,
    Body TEXT NULL,
    Description VARCHAR(255) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CacheControl ENUM('Private', 'Public') NOT NULL
);

CREATE TABLE Task (
    Id VARCHAR(18) PRIMARY KEY,
    WhoId VARCHAR(18) NULL,
    WhatId VARCHAR(18) NULL,
    Subject VARCHAR(255) NULL,
    ActivityDate DATE NULL,
    Status ENUM('Not Started', 'In Progress', 'Completed', 'Waiting on someone else', 'Deferred') NOT NULL,
    Priority ENUM('High', 'Normal', 'Low') NOT NULL,
    OwnerId VARCHAR(18) NOT NULL,
    Description VARCHAR(32000) NULL,
    IsDeleted BIT NOT NULL,
    AccountId VARCHAR(18) NULL,
    IsClosed BIT NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    IsArchived BIT NOT NULL,
    CallDurationInSeconds INT(8) NULL,
    CallType ENUM('Internal', 'Inbound', 'Outbound') NULL,
    CallDisposition VARCHAR(255) NULL,
    CallObject VARCHAR(255) NULL,
    ReminderDateTime DATETIME NULL,
    IsReminderSet BIT NOT NULL,
    RecurrenceActivityId VARCHAR(18) NULL,
    IsRecurrence BIT NOT NULL,
    RecurrenceStartDateOnly DATE NULL,
    RecurrenceEndDateOnly DATE NULL,
    RecurrenceTimeZoneSidKey ENUM('Pacific/Kiritimati', 'Pacific/Enderbury', 'Pacific/Tongatapu', 'Pacific/Chatham', 'Asia/Kamchatka', 'Pacific/Auckland', 'Pacific/Fiji', 'Pacific/Guadalcanal', 'Pacific/Norfolk', 'Australia/Lord_Howe', 'Australia/Brisbane', 'Australia/Sydney', 'Australia/Adelaide', 'Australia/Darwin', 'Asia/Seoul', 'Asia/Tokyo', 'Asia/Hong_Kong', 'Asia/Kuala_Lumpur', 'Asia/Manila', 'Asia/Shanghai', 'Asia/Singapore', 'Asia/Taipei', 'Australia/Perth', 'Asia/Bangkok', 'Asia/Ho_Chi_Minh', 'Asia/Jakarta', 'Asia/Rangoon', 'Asia/Dhaka', 'Asia/Kathmandu', 'Asia/Colombo', 'Asia/Kolkata', 'Asia/Karachi', 'Asia/Tashkent', 'Asia/Yekaterinburg', 'Asia/Kabul', 'Asia/Tehran', 'Asia/Dubai', 'Asia/Tbilisi', 'Africa/Nairobi', 'Asia/Baghdad', 'Asia/Jerusalem', 'Asia/Kuwait', 'Asia/Riyadh', 'Europe/Athens', 'Europe/Bucharest', 'Europe/Helsinki', 'Europe/Istanbul', 'Europe/Minsk', 'Europe/Moscow', 'Africa/Cairo', 'Africa/Johannesburg', 'Europe/Amsterdam', 'Europe/Berlin', 'Europe/Brussels', 'Europe/Paris', 'Europe/Prague', 'Europe/Rome', 'Africa/Algiers', 'Europe/Dublin', 'Europe/Lisbon', 'Europe/London', 'GMT', 'Atlantic/Cape_Verde', 'Atlantic/South_Georgia', 'America/St_Johns', 'America/Argentina/Buenos_Aires', 'America/Halifax', 'America/Santiago', 'America/Sao_Paulo', 'Atlantic/Bermuda', 'America/Caracas', 'America/Indiana/Indianapolis', 'America/New_York', 'America/Puerto_Rico', 'America/Bogota', 'America/Chicago', 'America/Lima', 'America/Mexico_City', 'America/Panama', 'America/Denver', 'America/El_Salvador', 'America/Los_Angeles', 'America/Phoenix', 'America/Tijuana', 'America/Anchorage', 'Pacific/Honolulu', 'Pacific/Niue', 'Pacific/Pago_Pago') NULL,
    RecurrenceType ENUM('RecursDaily', 'RecursEveryWeekday', 'RecursMonthly', 'RecursMonthlyNth', 'RecursWeekly', 'RecursYearly', 'RecursYearlyNth') NULL,
    RecurrenceInterval INT(9) NULL,
    RecurrenceDayOfWeekMask INT(9) NULL,
    RecurrenceDayOfMonth INT(9) NULL,
    RecurrenceInstance ENUM('First', 'Second', 'Third', 'Fourth', 'Last') NULL,
    RecurrenceMonthOfYear ENUM('January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December') NULL
);

CREATE TABLE TaskFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE TaskPriority (
    Id VARCHAR(18) PRIMARY KEY,
    MasterLabel VARCHAR(255) NULL,
    SortOrder INT(9) NULL,
    IsDefault BIT NOT NULL,
    IsHighPriority BIT NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE TaskStatus (
    Id VARCHAR(18) PRIMARY KEY,
    MasterLabel VARCHAR(255) NULL,
    SortOrder INT(9) NULL,
    IsDefault BIT NOT NULL,
    IsClosed BIT NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE Topic (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(99) NOT NULL,
    Description VARCHAR(1000) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE User (
    Id VARCHAR(18) PRIMARY KEY,
    Username VARCHAR(80) NOT NULL,
    LastName VARCHAR(80) NOT NULL,
    FirstName VARCHAR(40) NULL,
    Name VARCHAR(121) NOT NULL,
    CompanyName VARCHAR(80) NULL,
    Division VARCHAR(80) NULL,
    Department VARCHAR(80) NULL,
    Title VARCHAR(80) NULL,
    Street VARCHAR(255) NULL,
    City VARCHAR(40) NULL,
    State VARCHAR(80) NULL,
    PostalCode VARCHAR(20) NULL,
    Country VARCHAR(80) NULL,
    Email VARCHAR(128) NOT NULL,
    Phone VARCHAR(40) NULL,
    Fax VARCHAR(40) NULL,
    MobilePhone VARCHAR(40) NULL,
    Alias VARCHAR(8) NOT NULL,
    CommunityNickname VARCHAR(40) NOT NULL,
    IsActive BIT NOT NULL,
    TimeZoneSidKey ENUM('Pacific/Kiritimati', 'Pacific/Enderbury', 'Pacific/Tongatapu', 'Pacific/Chatham', 'Asia/Kamchatka', 'Pacific/Auckland', 'Pacific/Fiji', 'Pacific/Guadalcanal', 'Pacific/Norfolk', 'Australia/Lord_Howe', 'Australia/Brisbane', 'Australia/Sydney', 'Australia/Adelaide', 'Australia/Darwin', 'Asia/Seoul', 'Asia/Tokyo', 'Asia/Hong_Kong', 'Asia/Kuala_Lumpur', 'Asia/Manila', 'Asia/Shanghai', 'Asia/Singapore', 'Asia/Taipei', 'Australia/Perth', 'Asia/Bangkok', 'Asia/Ho_Chi_Minh', 'Asia/Jakarta', 'Asia/Rangoon', 'Asia/Dhaka', 'Asia/Kathmandu', 'Asia/Colombo', 'Asia/Kolkata', 'Asia/Karachi', 'Asia/Tashkent', 'Asia/Yekaterinburg', 'Asia/Kabul', 'Asia/Tehran', 'Asia/Dubai', 'Asia/Tbilisi', 'Africa/Nairobi', 'Asia/Baghdad', 'Asia/Jerusalem', 'Asia/Kuwait', 'Asia/Riyadh', 'Europe/Athens', 'Europe/Bucharest', 'Europe/Helsinki', 'Europe/Istanbul', 'Europe/Minsk', 'Europe/Moscow', 'Africa/Cairo', 'Africa/Johannesburg', 'Europe/Amsterdam', 'Europe/Berlin', 'Europe/Brussels', 'Europe/Paris', 'Europe/Prague', 'Europe/Rome', 'Africa/Algiers', 'Europe/Dublin', 'Europe/Lisbon', 'Europe/London', 'GMT', 'Atlantic/Cape_Verde', 'Atlantic/South_Georgia', 'America/St_Johns', 'America/Argentina/Buenos_Aires', 'America/Halifax', 'America/Santiago', 'America/Sao_Paulo', 'Atlantic/Bermuda', 'America/Caracas', 'America/Indiana/Indianapolis', 'America/New_York', 'America/Puerto_Rico', 'America/Bogota', 'America/Chicago', 'America/Lima', 'America/Mexico_City', 'America/Panama', 'America/Denver', 'America/El_Salvador', 'America/Los_Angeles', 'America/Phoenix', 'America/Tijuana', 'America/Anchorage', 'Pacific/Honolulu', 'Pacific/Niue', 'Pacific/Pago_Pago') NOT NULL,
    UserRoleId VARCHAR(18) NULL,
    LocaleSidKey ENUM('sq_AL', 'ar_BH', 'ar_EG', 'ar_JO', 'ar_KW', 'ar_LB', 'ar_QA', 'ar_SA', 'ar_AE', 'hy_AM', 'az_AZ', 'bn_BD', 'eu_ES', 'be_BY', 'bs_BA', 'bg_BG', 'ca_ES', 'zh_CN', 'zh_HK', 'zh_MO', 'zh_SG', 'zh_TW', 'hr_HR', 'cs_CZ', 'da_DK', 'nl_BE', 'nl_NL', 'nl_SR', 'en_AU', 'en_BB', 'en_BM', 'en_CA', 'en_GH', 'en_IN', 'en_ID', 'en_IE', 'en_MY', 'en_NZ', 'en_NG', 'en_PK', 'en_PH', 'en_SG', 'en_ZA', 'en_GB', 'en_US', 'et_EE', 'fi_FI', 'fr_BE', 'fr_CA', 'fr_FR', 'fr_LU', 'fr_MC', 'fr_CH', 'ka_GE', 'de_AT', 'de_DE', 'de_LU', 'de_CH', 'el_GR', 'iw_IL', 'hi_IN', 'hu_HU', 'is_IS', 'in_ID', 'ga_IE', 'it_IT', 'it_CH', 'ja_JP', 'kk_KZ', 'km_KH', 'ko_KR', 'ky_KG', 'lv_LV', 'lt_LT', 'lb_LU', 'mk_MK', 'ms_BN', 'ms_MY', 'mt_MT', 'sh_ME', 'no_NO', 'pl_PL', 'pt_AO', 'pt_BR', 'pt_PT', 'ro_MD', 'ro_RO', 'rm_CH', 'ru_RU', 'sr_BA', 'sh_BA', 'sh_CS', 'sr_CS', 'sk_SK', 'sl_SI', 'es_AR', 'es_BO', 'es_CL', 'es_CO', 'es_CR', 'es_DO', 'es_EC', 'es_SV', 'es_GT', 'es_HN', 'es_MX', 'es_PA', 'es_PY', 'es_PE', 'es_PR', 'es_ES', 'es_UY', 'es_VE', 'sv_SE', 'tl_PH', 'tg_TJ', 'th_TH', 'tr_TR', 'uk_UA', 'ur_PK', 'vi_VN', 'cy_GB') NOT NULL,
    ReceivesInfoEmails BIT NOT NULL,
    ReceivesAdminInfoEmails BIT NOT NULL,
    EmailEncodingKey ENUM('UTF-8', 'ISO-8859-1', 'Shift_JIS', 'ISO-2022-JP', 'EUC-JP', 'ks_c_5601-1987', 'Big5', 'GB2312', 'Big5-HKSCS', 'x-SJIS_0213') NOT NULL,
    ProfileId VARCHAR(18) NOT NULL,
    UserType ENUM('Standard', 'PowerPartner', 'PowerCustomerSuccess', 'CustomerSuccess', 'Guest', 'CspLitePortal', 'CsnOnly', 'SelfService') NULL,
    LanguageLocaleKey ENUM('en_US', 'de', 'es', 'fr', 'it', 'ja', 'sv', 'ko', 'zh_TW', 'zh_CN', 'pt_BR', 'nl_NL', 'da', 'th', 'fi', 'ru', 'es_MX', 'no') NOT NULL,
    EmployeeNumber VARCHAR(20) NULL,
    DelegatedApproverId VARCHAR(18) NULL,
    ManagerId VARCHAR(18) NULL,
    LastLoginDate DATETIME NULL,
    LastPasswordChangeDate DATETIME NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    OfflineTrialExpirationDate DATETIME NULL,
    OfflinePdaTrialExpirationDate DATETIME NULL,
    UserPermissionsMarketingUser BIT NOT NULL,
    UserPermissionsOfflineUser BIT NOT NULL,
    UserPermissionsCallCenterAutoLogin BIT NOT NULL,
    UserPermissionsMobileUser BIT NOT NULL,
    UserPermissionsSFContentUser BIT NOT NULL,
    UserPermissionsKnowledgeUser BIT NOT NULL,
    UserPermissionsInteractionUser BIT NOT NULL,
    UserPermissionsSupportUser BIT NOT NULL,
    UserPermissionsJigsawProspectingUser BIT NOT NULL,
    UserPermissionsSiteforceContributorUser BIT NOT NULL,
    UserPermissionsSiteforcePublisherUser BIT NOT NULL,
    ForecastEnabled BIT NOT NULL,
    UserPreferencesActivityRemindersPopup BIT NOT NULL,
    UserPreferencesEventRemindersCheckboxDefault BIT NOT NULL,
    UserPreferencesTaskRemindersCheckboxDefault BIT NOT NULL,
    UserPreferencesReminderSoundOff BIT NOT NULL,
    UserPreferencesDisableAllFeedsEmail BIT NOT NULL,
    UserPreferencesDisableFollowersEmail BIT NOT NULL,
    UserPreferencesDisableProfilePostEmail BIT NOT NULL,
    UserPreferencesDisableChangeCommentEmail BIT NOT NULL,
    UserPreferencesDisableLaterCommentEmail BIT NOT NULL,
    UserPreferencesDisProfPostCommentEmail BIT NOT NULL,
    UserPreferencesContentNoEmail BIT NOT NULL,
    UserPreferencesContentEmailAsAndWhen BIT NOT NULL,
    UserPreferencesApexPagesDeveloperMode BIT NOT NULL,
    UserPreferencesHideCSNGetChatterMobileTask BIT NOT NULL,
    UserPreferencesDisableMentionsPostEmail BIT NOT NULL,
    UserPreferencesDisMentionsCommentEmail BIT NOT NULL,
    UserPreferencesHideCSNDesktopTask BIT NOT NULL,
    UserPreferencesDisCommentAfterLikeEmail BIT NOT NULL,
    UserPreferencesDisableLikeEmail BIT NOT NULL,
    UserPreferencesSortFeedByComment BIT NOT NULL,
    UserPreferencesDisableMessageEmail BIT NOT NULL,
    UserPreferencesOptOutOfTouch BIT NOT NULL,
    UserPreferencesJigsawListUser BIT NOT NULL,
    UserPreferencesDisableBookmarkEmail BIT NOT NULL,
    UserPreferencesDisableSharePostEmail BIT NOT NULL,
    UserPreferencesEnableAutoSubForFeeds BIT NOT NULL,
    UserPreferencesDisableFileShareNotificationsForApi BIT NOT NULL,
    UserPreferencesShowTitleToExternalUsers BIT NOT NULL,
    UserPreferencesShowManagerToExternalUsers BIT NOT NULL,
    UserPreferencesShowEmailToExternalUsers BIT NOT NULL,
    UserPreferencesShowWorkPhoneToExternalUsers BIT NOT NULL,
    UserPreferencesShowMobilePhoneToExternalUsers BIT NOT NULL,
    UserPreferencesShowFaxToExternalUsers BIT NOT NULL,
    UserPreferencesShowStreetAddressToExternalUsers BIT NOT NULL,
    UserPreferencesShowCityToExternalUsers BIT NOT NULL,
    UserPreferencesShowStateToExternalUsers BIT NOT NULL,
    UserPreferencesShowPostalCodeToExternalUsers BIT NOT NULL,
    UserPreferencesShowCountryToExternalUsers BIT NOT NULL,
    UserPreferencesLightningExperiencePreferred BIT NOT NULL,
    ContactId VARCHAR(18) NULL,
    AccountId VARCHAR(18) NULL,
    CallCenterId VARCHAR(18) NULL,
    Extension VARCHAR(40) NULL,
    FederationIdentifier VARCHAR(512) NULL,
    AboutMe VARCHAR(1000) NULL,
    FullPhotoUrl VARCHAR(1024) NULL,
    SmallPhotoUrl VARCHAR(1024) NULL,
    DigestFrequency ENUM('D', 'W', 'N') NOT NULL,
    DefaultGroupNotificationFrequency ENUM('P', 'D', 'W', 'N') NOT NULL,
    JigsawImportLimitOverride INT(9) NULL
);

CREATE TABLE UserFeed (
    Id VARCHAR(18) PRIMARY KEY,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('TrackedChange', 'UserStatus', 'TextPost', 'AdvancedTextPost', 'LinkPost', 'ContentPost', 'PollPost', 'RypplePost', 'ProfileSkillPost', 'DashboardComponentSnapshot', 'ApprovalPost', 'CaseCommentPost', 'ReplyPost', 'EmailMessageEvent', 'CallLogPost', 'ChangeStatusPost', 'AttachArticleEvent', 'MilestoneEvent', 'ActivityEvent', 'ChatTranscriptPost', 'CollaborationGroupCreated', 'CollaborationGroupUnarchived', 'SocialPost', 'QuestionPost', 'FacebookPost', 'BasicTemplateFeedItem', 'CreateRecordEvent', 'CanvasPost', 'AnnouncementPost') NULL,
    CreatedById VARCHAR(18) NOT NULL,
    CreatedDate DATETIME NOT NULL,
    IsDeleted BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    CommentCount INT(9) NOT NULL,
    LikeCount INT(9) NOT NULL,
    Title VARCHAR(255) NULL,
    Body VARCHAR(10000) NULL,
    LinkUrl VARCHAR(1000) NULL,
    RelatedRecordId VARCHAR(18) NULL,
    ContentData TEXT NULL,
    ContentFileName VARCHAR(255) NULL,
    ContentDescription VARCHAR(1000) NULL,
    ContentType VARCHAR(120) NULL,
    ContentSize INT(9) NULL,
    InsertedById VARCHAR(18) NULL
);

CREATE TABLE UserLicense (
    Id VARCHAR(18) PRIMARY KEY,
    LicenseDefinitionKey VARCHAR(40) NOT NULL,
    Name VARCHAR(40) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE UserPreference (
    Id VARCHAR(18) PRIMARY KEY,
    UserId VARCHAR(18) NOT NULL,
    Preference ENUM('57', '58', '91', '92', '93', '94', '96', '97', '98', '99', '100', '101', '102') NOT NULL,
    Value VARCHAR(10000) NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE UserRecordAccess (
    Id VARCHAR(18) PRIMARY KEY,
    UserId VARCHAR(18) NOT NULL,
    RecordId ENUM('#empty#') NOT NULL,
    HasReadAccess BIT NOT NULL,
    HasEditAccess BIT NOT NULL,
    HasDeleteAccess BIT NOT NULL,
    HasTransferAccess BIT NOT NULL,
    HasAllAccess BIT NOT NULL,
    MaxAccessLevel ENUM('None', 'Read', 'Edit', 'Delete', 'Transfer', 'All') NULL
);

CREATE TABLE UserRole (
    Id VARCHAR(18) PRIMARY KEY,
    Name VARCHAR(80) NOT NULL,
    ParentRoleId VARCHAR(18) NULL,
    RollupDescription VARCHAR(80) NULL,
    OpportunityAccessForAccountOwner ENUM('None', 'Read', 'Edit') NOT NULL,
    CaseAccessForAccountOwner ENUM('None', 'Read', 'Edit') NULL,
    ContactAccessForAccountOwner ENUM('None', 'Read', 'Edit') NULL,
    ForecastUserId VARCHAR(18) NULL,
    MayForecastManagerShare BIT NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL,
    DeveloperName VARCHAR(80) NULL,
    PortalAccountId VARCHAR(18) NULL,
    PortalType ENUM('None', 'CustomerPortal', 'Partner') NULL,
    PortalAccountOwnerId VARCHAR(18) NULL
);

CREATE TABLE UserShare (
    Id VARCHAR(18) PRIMARY KEY,
    UserId VARCHAR(18) NOT NULL,
    UserOrGroupId VARCHAR(18) NOT NULL,
    UserAccessLevel ENUM('Read', 'Edit') NOT NULL,
    RowCause ENUM('Owner', 'Manual', 'Rule', 'ImplicitChild', 'ImplicitParent', 'ImplicitPerson', 'Team', 'Territory', 'TerritoryManual', 'TerritoryRule', 'Territory2Forecast') NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    IsActive BIT NOT NULL
);

CREATE TABLE Vote (
    Id VARCHAR(18) PRIMARY KEY,
    IsDeleted BIT NOT NULL,
    ParentId VARCHAR(18) NOT NULL,
    Type ENUM('Up', 'Down', '1', '2', '3', '4', '5') NOT NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);

CREATE TABLE WebLink (
    Id VARCHAR(18) PRIMARY KEY,
    PageOrSobjectType ENUM('Account', 'Activity', 'Asset', 'AssetRelationship', 'Campaign', 'CampaignMember', 'Case', 'Contact', 'ContentVersion', 'Contract', 'CustomPageItem', 'DandBCompany', 'DashboardComponent', 'DuplicateRecordItem', 'DuplicateRecordSet', 'EmailMessage', 'Event', 'Goal', 'GoalLink', 'Idea', 'Lead', 'Macro', 'Metric', 'Opportunity', 'OpportunityLineItem', 'Order', 'OrderItem', 'Product2', 'QuickText', 'Scorecard', 'ScorecardAssociation', 'ScorecardMetric', 'SocialPersona', 'Solution', 'Task', 'User', 'UserProvisioningRequest', 'WorkCoaching', 'WorkFeedback', 'WorkFeedbackQuestion', 'WorkFeedbackQuestionSet', 'WorkFeedbackRequest', 'WorkFeedbackTemplate', 'WorkPerformanceCycle') NOT NULL,
    Name VARCHAR(240) NOT NULL,
    IsProtected BIT NOT NULL,
    Url VARCHAR(1048576) NULL,
    EncodingKey ENUM('UTF-8', 'ISO-8859-1', 'Shift_JIS', 'ISO-2022-JP', 'EUC-JP', 'ks_c_5601-1987', 'Big5', 'GB2312', 'Big5-HKSCS', 'x-SJIS_0213') NOT NULL,
    LinkType ENUM('url', 'sControl', 'javascript', 'page', 'flow') NOT NULL,
    OpenType ENUM('newWindow', 'sidebar', 'noSidebar', 'replace', 'onClickJavaScript') NOT NULL,
    Height INT(9) NULL,
    Width INT(9) NULL,
    ShowsLocation BIT NOT NULL,
    HasScrollbars BIT NOT NULL,
    HasToolbar BIT NOT NULL,
    HasMenubar BIT NOT NULL,
    ShowsStatus BIT NOT NULL,
    IsResizable BIT NOT NULL,
    Position ENUM('fullScreen', 'none', 'topLeft') NULL,
    ScontrolId VARCHAR(18) NULL,
    MasterLabel VARCHAR(240) NULL,
    Description VARCHAR(1000) NULL,
    DisplayType ENUM('L', 'B', 'M') NOT NULL,
    RequireRowSelection BIT NOT NULL,
    NamespacePrefix VARCHAR(15) NULL,
    CreatedDate DATETIME NOT NULL,
    CreatedById VARCHAR(18) NOT NULL,
    LastModifiedDate DATETIME NOT NULL,
    LastModifiedById VARCHAR(18) NOT NULL,
    SystemModstamp DATETIME NOT NULL
);
