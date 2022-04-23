component persistent="true" table="cfugs"
{

    property name="id" fieldtype="id" column="cfugID" generator="native";
    property name="cfugName" fieldtype="column" ormType="string";
    property name="website" fieldtype="column" ormType="string";
    property name="foundedYear" fieldtype="column" ormType="numeric";
    property name="lastMeeting" fieldtype="column" ormType="datetime";

}
