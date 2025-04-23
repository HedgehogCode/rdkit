%typemap(javadestruct, methodname="delete", methodmodifiers="public synchronized") RDKit::RDProps %{
    {
        System.err.println("DEBUG: [" + java.time.LocalDateTime.now() + "] Deleting " + this.getClass().getName()
                + " (native ptr = 0x" + Long.toHexString(swigCPtr) + ")");
        if (swigCPtr != 0 && swigCMemOwn) 
        {
            swigCMemOwn = false;
            $imclassname.delete_$javaclassname(swigCPtr);
        }
        swigCPtr = 0;
    }
  %}

// TRYING TO DEBUG THE DELETE METHOD FOR ALL JAVA WRAPPERS:

// %typemap(javadestruct, methodname="delete", methodmodifiers="public synchronized") SWIGTYPE %{
//     {
//         System.err.println("DEBUG: [" + java.time.LocalDateTime.now() + "] Deleting " + this.getClass().getName()
//                 + " (native ptr = 0x" + Long.toHexString(swigCPtr) + ")");
//         if (swigCPtr != 0 && swigCMemOwn) {
//             swigCMemOwn = false;
//             $imclassname.delete_$javaclassname(swigCPtr);
//         }
//         swigCPtr = 0;
//     }
//   %}

// %typemap(javadestruct_derived, methodname="delete", methodmodifiers="public synchronized") SWIGTYPE %{
//     {
//         System.err.println("DEBUG: [" + java.time.LocalDateTime.now() + "] Deleting " + this.getClass().getName()
//                 + " (native ptr = 0x" + Long.toHexString(swigCPtr) + ")");
//         if (swigCPtr != 0 && swigCMemOwn) {
//             swigCMemOwn = false;
//             $imclassname.delete_$javaclassname(swigCPtr);
//         }
//         swigCPtr = 0;
//     }
//   %}

// // For RDKit::SubstanceGroup::AttachPoint
// %typemap(javadestruct, methodname="delete", methodmodifiers="public synchronized") RDKit::SubstanceGroup::AttachPoint %{
//     {
//         System.err.println("DEBUG: [" + java.time.LocalDateTime.now() + "] Deleting " + this.getClass().getName()
//                 + " (native ptr = 0x" + Long.toHexString(swigCPtr) + ")");
//         if (swigCPtr != 0 && swigCMemOwn) {
//             swigCMemOwn = false;
//             $imclassname.delete_SubstanceGroup_AttachPoint(swigCPtr);
//         }
//         swigCPtr = 0;
//     }
//   %}
  
// // For RDKit::SubstanceGroup::CState
// %typemap(javadestruct, methodname="delete", methodmodifiers="public synchronized") RDKit::SubstanceGroup::CState %{
//     {
//         System.err.println("DEBUG: [" + java.time.LocalDateTime.now() + "] Deleting " + this.getClass().getName()
//                 + " (native ptr = 0x" + Long.toHexString(swigCPtr) + ")");
//         if (swigCPtr != 0 && swigCMemOwn) {
//             swigCMemOwn = false;
//             $imclassname.delete_SubstanceGroup_CState(swigCPtr);
//         }
//         swigCPtr = 0;
//     }
//   %}