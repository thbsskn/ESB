xquery version "1.0" encoding "Cp1252";
(:: pragma  parameter="$anyType" type="xs:anyType" ::)
(:: pragma  type="xs:anyType" ::)

declare namespace xf = "http://tempuri.org/ManageDigitalAccountDetails_1_0/transformations/ConstructAccountDetailsResponse/";

declare function xf:ConstructAccountDetailsResponse($anyType as element(*))
    as element(*) {
        <Response>
        <Balance>{"25K"}</Balance>
        <LastTransactionDetails>{"Time:10.00,Amount:10K,Debit,Status:Success"}</LastTransactionDetails>
        </Response>
};

declare variable $anyType as element(*) external;

xf:ConstructAccountDetailsResponse($anyType)
