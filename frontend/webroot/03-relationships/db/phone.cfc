component persistent="true" table="phone"
{

    property name="id" fieldtype="id" column="phoneID" generator="native";
    property name="phoneNumber" fieldtype="column" ormType="numeric";
    property name="phoneType" fieldtype="column" ormType="numeric";

    // this property leverages the existing relationship built in the customer.cfc.  It simply opens up the
    // methods to find the customer if you have the phone number.  It makes no changes to the DB.
    property name="customer" fieldtype="many-to-one" cfc="customer" fkcolumn="customerID";

}
