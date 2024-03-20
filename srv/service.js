// const cds = require('@sap/cds');


// module.exports = cds.service.impl(async function(){

//   let {college, lecture, student} = this.entities;


//     // this.on('POST', lecture, async req => {
//     // this.before('READ', lecture, async req => {
//     this.on('POST', lecture.drafts, async req => {
//         const { lecture } = cds.entities;
//         console.log('createDraftRole - Request Parameters:', req.data);
//         const roleData = {
//             // ID: cds.utils.uuid(), // Generate a UUID for the role ID
//             c_id: req.data.c_id
//         };
//         const role = await cds.transaction(req).run(
//             INSERT.into(lecture.drafts).entries(roleData)
//         );
//         return role;
//     });
//     // this.on('POST', student.drafts, async req => {
//     //     const { student } = cds.entities;
//     //     console.log('createDraftRole - Request Parameters:', req.data);
//     //     const roleData = {
//     //         // ID: cds.utils.uuid(), // Generate a UUID for the role ID
//     //         c_id: req.data.c_id,
//     //         l_id: req.data.l_id,
           
//     //     };
//     //     const role = await cds.transaction(req).run(
//     //         INSERT.into(student).entries(roleData)
//     //     );
//     //     return role;
//     // });

// });
















// // const cds = require('@sap/cds');

// // module.exports = cds.service.impl(async function(){
// //     let {college} = this.entities;

    

// //     this.on('POST', college, async(req, next)=>{
// //         debugger
// //         try{
// //             var val = req.data.c_name;
// //             const alphaRegex = /^[A-Za-z]+$/;
// //             if(val==null){
// //                     req.error( 'College name is required');
// //                 }
// //             else if(!val.match(alphaRegex)){
// //                 req.error( 'College name should contain only alphabets');
// //             }
// //             else{ 		
// //             return next();
// //             }
// //         }catch (error) {
// //             return req.error(500, error.message);
// //         }
// //     })
// // });