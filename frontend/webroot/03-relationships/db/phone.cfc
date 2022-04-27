component persistent="true" table="phone"
{

    property name="id" fieldtype="id" column="phoneID" generator="native";
    property name="phoneNumber" fieldtype="column" ormType="numeric";
    property name="phoneType" fieldtype="column" ormType="numeric";

}
