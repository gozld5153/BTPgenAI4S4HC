using minhwanhwang_22_STUDENTH22Srv as service from '../../srv/service';
annotate service.CustomerMessage with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'customerMessageID',
                Value : customerMessageID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'titleEnglish',
                Value : titleEnglish,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerName',
                Value : customerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'productName',
                Value : productName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'summaryEnglish',
                Value : summaryEnglish,
            },
            {
                $Type : 'UI.DataField',
                Label : 'messageCategory',
                Value : messageCategory,
            },
            {
                $Type : 'UI.DataField',
                Label : 'messageUrgency',
                Value : messageUrgency,
            },
            {
                $Type : 'UI.DataField',
                Label : 'messageSentiment',
                Value : messageSentiment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'titleCustomerLanguage',
                Value : titleCustomerLanguage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerId',
                Value : customerId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'productId',
                Value : productId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'summaryCustomerLanguage',
                Value : summaryCustomerLanguage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'originatingCountry',
                Value : originatingCountry,
            },
            {
                $Type : 'UI.DataField',
                Label : 'sourceLanguage',
                Value : sourceLanguage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fullMessageCustomerLanguage',
                Value : fullMessageCustomerLanguage,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fullMessageEnglish',
                Value : fullMessageEnglish,
            },
            {
                $Type : 'UI.DataField',
                Label : 'suggestedResponseEnglish',
                Value : suggestedResponseEnglish,
            },
            {
                $Type : 'UI.DataField',
                Label : 'suggestedResponseCustomerLanguage',
                Value : suggestedResponseCustomerLanguage,
            },
            {
                $Type : 'UI.DataField',
                Value : a_ServiceOrder_ServiceOrder,
                Label : 'Service Order',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'customerMessageID',
            Value : customerMessageID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customerName',
            Value : customerName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'productName',
            Value : productName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'titleEnglish',
            Value : titleEnglish,
        },
        {
            $Type : 'UI.DataField',
            Label : 'summaryEnglish',
            Value : summaryEnglish,
        },
    ],
    UI.Identification : [
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'minhwanhwang_22_STUDENTH22Srv.Action1',
            Label : 'Generate Reply',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'minhwanhwang_22_STUDENTH22Srv.Action2',
            Label : 'Maintain SO',
        },
    ],
);

annotate service.CustomerMessage with {
    a_ServiceOrder @(
        Common.Text : {
            $value : a_ServiceOrder.ServiceOrderDescription,
            ![@UI.TextArrangement] : #TextSeparate
        },
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'A_ServiceOrder',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : a_ServiceOrder_ServiceOrder,
                    ValueListProperty : 'ServiceOrder',
                },
            ],
            Label : 'Service Order',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.A_ServiceOrder with {
    ServiceOrder @Common.Text : {
        $value : ServiceOrderDescription,
        ![@UI.TextArrangement] : #TextLast,
    }
};

