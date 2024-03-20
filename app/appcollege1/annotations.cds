using MyService as service from '../../srv/service';

annotate service.college with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'c_id',
            Value : c_id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'c_name',
            Value : c_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'c_address',
            Value : c_address,
        },
    ]
);
annotate service.college with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'c_id',
                Value : c_id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'c_name',
                Value : c_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'c_address',
                Value : c_address,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'lecture details',
            ID : 'lecturedetails',
            Target : 'col_lec_rel/@UI.LineItem#lecturedetails',
        },
    ]
);
annotate service.lecture with @(
    UI.LineItem #lecturedetails : [
        {
            $Type : 'UI.DataField',
            Value : c_id,
            Label : 'c_id',
        },{
            $Type : 'UI.DataField',
            Value : l_id,
            Label : 'l_id',
        },{
            $Type : 'UI.DataField',
            Value : l_name,
            Label : 'l_name',
        },]
);
annotate service.lecture with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'lecture',
            ID : 'lecture',
            Target : '@UI.FieldGroup#lecture',
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'stud_addr_group',
            ID : 'stud_addr_group',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'stud',
                    ID : 'stud',
                    Target : 'lec_stu_rel/@UI.LineItem#stud',
                },],
        },
    ],
    UI.FieldGroup #lecture : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : c_id,
                Label : 'c_id',
            },{
                $Type : 'UI.DataField',
                Value : l_id,
                Label : 'l_id',
            },{
                $Type : 'UI.DataField',
                Value : l_name,
                Label : 'l_name',
            },],
    }
);
annotate service.student with @(
    UI.LineItem #stuaddr : [
        {
            $Type : 'UI.DataField',
            Value : c_id,
            Label : 'c_id',
        },{
            $Type : 'UI.DataField',
            Value : l_id,
            Label : 'l_id',
        },{
            $Type : 'UI.DataField',
            Value : st_dob,
            Label : 'st_dob',
        },{
            $Type : 'UI.DataField',
            Value : st_id,
            Label : 'st_id',
        },{
            $Type : 'UI.DataField',
            Value : st_name,
            Label : 'st_name',
        },]
);
annotate service.student with @(
    UI.LineItem #stud : [
        {
            $Type : 'UI.DataField',
            Value : c_id,
            Label : 'c_id',
        },{
            $Type : 'UI.DataField',
            Value : l_id,
            Label : 'l_id',
        },{
            $Type : 'UI.DataField',
            Value : st_dob,
            Label : 'st_dob',
        },{
            $Type : 'UI.DataField',
            Value : st_id,
            Label : 'st_id',
        },{
            $Type : 'UI.DataField',
            Value : st_name,
            Label : 'st_name',
        },]
);
annotate service.student with @(
    UI.LineItem #addr : [
        {
            $Type : 'UI.DataField',
            Value : stud.lec_add_rel.a_id,
            Label : 'a_id',
        },{
            $Type : 'UI.DataField',
            Value : stud.lec_add_rel.c_id,
            Label : 'c_id',
        },{
            $Type : 'UI.DataField',
            Value : stud.lec_add_rel.l_id,
            Label : 'l_id',
        },{
            $Type : 'UI.DataField',
            Value : stud.lec_add_rel.pri_address,
            Label : 'pri_address',
        },{
            $Type : 'UI.DataField',
            Value : stud.lec_add_rel.sec_address,
            Label : 'sec_address',
        },]
);
annotate service.student with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'stud',
            ID : 'stud',
            Target : '@UI.FieldGroup#stud',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'addr',
            ID : 'addr',
            Target : '@UI.FieldGroup#addr',
        },
    ],
    UI.FieldGroup #stud : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : c_id,
                Label : 'c_id',
            },{
                $Type : 'UI.DataField',
                Value : l_id,
                Label : 'l_id',
            },{
                $Type : 'UI.DataField',
                Value : st_dob,
                Label : 'st_dob',
            },{
                $Type : 'UI.DataField',
                Value : st_id,
                Label : 'st_id',
            },{
                $Type : 'UI.DataField',
                Value : st_name,
                Label : 'st_name',
            },],
    }
);
annotate service.student with @(
    UI.FieldGroup #addr : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : stud.lec_add_rel.a_id,
                Label : 'a_id',
            },{
                $Type : 'UI.DataField',
                Value : stud.lec_add_rel.c_id,
                Label : 'c_id',
            },{
                $Type : 'UI.DataField',
                Value : stud.lec_add_rel.l_id,
                Label : 'l_id',
            },{
                $Type : 'UI.DataField',
                Value : stud.lec_add_rel.pri_address,
                Label : 'pri_address',
            },{
                $Type : 'UI.DataField',
                Value : stud.lec_add_rel.sec_address,
                Label : 'sec_address',
            },],
    }
);
annotate service.lecture with @(
    UI.FieldGroup #addr : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : lec_add_rel.a_id,
                Label : 'a_id',
            },{
                $Type : 'UI.DataField',
                Value : lec_add_rel.c_id,
                Label : 'c_id',
            },{
                $Type : 'UI.DataField',
                Value : lec_add_rel.l_id,
                Label : 'l_id',
            },{
                $Type : 'UI.DataField',
                Value : lec_add_rel.pri_address,
                Label : 'pri_address',
            },{
                $Type : 'UI.DataField',
                Value : lec_add_rel.sec_address,
                Label : 'sec_address',
            },],
    }
);
annotate service.student with @(
    UI.LineItem #addr1 : [
        {
            $Type : 'UI.DataField',
            Value : stud.lec_add_rel.a_id,
            Label : 'a_id',
        },{
            $Type : 'UI.DataField',
            Value : stud.lec_add_rel.c_id,
            Label : 'c_id',
        },{
            $Type : 'UI.DataField',
            Value : stud.lec_add_rel.l_id,
            Label : 'l_id',
        },{
            $Type : 'UI.DataField',
            Value : stud.lec_add_rel.pri_address,
            Label : 'pri_address',
        },{
            $Type : 'UI.DataField',
            Value : stud.lec_add_rel.sec_address,
            Label : 'sec_address',
        },]
);
