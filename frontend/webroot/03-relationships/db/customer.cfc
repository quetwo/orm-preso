component persistent="true" table="customer"
{

    property name="id" fieldtype="id" generator="native" column="customerID";
    property name="name" fieldtype="column" ormType="string";
    property name="email" fieldtype="column" ormType="string";
    property name="active" fieldtype="column" ormType="boolean";
    property name="comments" fieldtype="column" ormType="longtext";

    property name="addresses" fieldtype="one-to-many" cfc="address" fkcolumn="customerID" type="array";
    property name="phones" fieldtype="one-to-many" cfc="phone" fkcolumn="customerID" type="array";

}
