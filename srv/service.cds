using { S4HCP_ServiceOrder_Odata } from './external/S4HCP_ServiceOrder_Odata.cds';

using { minhwanhwang_22_STUDENTH22 as my } from '../db/schema.cds';

@path : '/service/minhwanhwang_22_STUDENTH22'
service minhwanhwang_22_STUDENTH22Srv
{
    @odata.draft.enabled
    entity CustomerMessage as
        projection on my.CustomerMessage;

    entity A_ServiceOrder as
        projection on S4HCP_ServiceOrder_Odata.A_ServiceOrder
        {
            ServiceOrder,
            ServiceOrderDescription
        };
}

annotate minhwanhwang_22_STUDENTH22Srv with @requires :
[
    'authenticated-user'
];
