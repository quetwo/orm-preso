component persistent="true" table="exchangerates"
{

    property name="id" type="id" column="rateID" generator="native";
    property name="currency" fieldtype="column" ormType="string";
    property name="rate" fieldtype="column" ormType="numeric";
    property name="lastUpdated" fieldtype="column" ormType="datetime";

}
