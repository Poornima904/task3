namespace db;

entity college
{
    key c_id : Integer;
    c_name : String;
    c_address :String;
    col_lec_rel : Composition of many lecture on col_lec_rel.c_id = c_id;
}
entity lecture{
    key l_id : Integer;
    key  c_id : Integer @readonly;
     l_name : String;
     lec : Association to one college on lec.c_id = c_id;
    lec_stu_rel : Composition of many student on lec_stu_rel.l_id = l_id;
    lec_add_rel : Composition of one address on lec_add_rel.l_id = l_id;
}
entity student
{
    key st_id : Integer;
    key l_id :Integer @readonly ;
    key c_id :Integer;
    st_name : String;
    st_dob : Date;
    stud : Association to one lecture on stud.c_id = c_id;
    add2 : Association to one lecture on add2.l_id = l_id;
}
entity address{
    key a_id: Integer;
    key l_id :Integer  ;
    key c_id: Integer ;
    pri_address: String;
    sec_address: Integer;
    add1: Association to one lecture on add1.l_id=l_id;

}
// #define

