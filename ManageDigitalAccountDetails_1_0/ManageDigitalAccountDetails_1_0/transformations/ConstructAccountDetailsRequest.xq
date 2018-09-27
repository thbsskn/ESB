xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$anyType" type="xs:anyType" ::)
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/ManageDigitalAccountDetails_1_0/transformations/ConstructAccountDetailsRequest/";

declare function xf:ConstructAccountDetailsRequest($anyType as element(*),$configXML as element(*))
    as element(*) {
       <Request>
       <AccountNumber>{ data($configXML/AccountNumber) }</AccountNumber>
       <BranchName>{data($configXML/BranchName)}</BranchName>
       </Request>
};

declare variable $anyType as element(*) external;
declare variable $configXML as element(*) external;

xf:ConstructAccountDetailsRequest($anyType,$configXML)
