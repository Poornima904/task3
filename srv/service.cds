using {db} from '../db/schema';
service MyService {
    
    @odata.draft.enabled
    entity college as projection on db.college;
   
    entity lecture as projection on db.lecture;
   
    entity student as projection on db.student;
    entity address as projection on db.address;

}
