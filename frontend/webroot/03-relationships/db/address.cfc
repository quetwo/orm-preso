component persistent="true" table="address"
{

    property name="id" fieldtype="id" generator="native" column="addressID";
    property name="address1" fieldtype="column" ormType="string";
    property name="address2" fieldtype="column" ormType="string";
    property name="city" fieldtype="column" ormType="string";
    property name="st" fieldtype="column" ormType="string";
    property name="zip" fieldtype="column" ormType="numeric";
    property name="addressName" fieldtype="column" ormType="string";

}
