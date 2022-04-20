component persistent="true" table="beaches"
{
    property name="id" fieldtype="id" column="beachID" generator="native";
    property name="name" fieldtype="column" ormType="string";
    property name="island" fieldtype="column" ormType="string";
    property name="beachLength" fieldtype="column" ormType="numeric";

}
