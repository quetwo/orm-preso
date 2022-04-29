component persistent="true" table="customer"
{

    property name="id" fieldtype="id" generator="native" column="customerID";
    property name="name" fieldtype="column" ormType="string";
    property name="email" fieldtype="column" ormType="string";
    property name="active" fieldtype="column" ormType="boolean";
    property name="comments" fieldtype="column" ormType="longtext";


}
