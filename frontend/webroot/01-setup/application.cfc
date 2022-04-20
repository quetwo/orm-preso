component
{
    this.name = 'Demo1';
    this.sessionmanagement = true;
    this.sessiontimeout = createTimespan(0,0,30,0);   // 0 days, 0 hours, 30 minutes, 0 seconds
    this.applicationtimeout = createTimespan(1, 0, 0, 0);  // 1 days, 0 hours, 0 minutes, 0 seconds


    // the line below is used to define the default datasource used by Lucee to connect to our DB
    // if you define this in the Lucee Admin (or CFIDE), you don't have to include it here.  You WILL
    // however need to name it.
    this.datasource = {
        class: 'com.mysql.cj.jdbc.Driver'
        , bundleName: 'com.mysql.cj'
        , bundleVersion: '8.0.19'
        , connectionString: 'jdbc:mysql://db:3306/' & server.system.environment.MYSQL_DATABASE & '?characterEncoding=UTF-8&serverTimezone=Etc/UTC&autoReconnect=true&maxReconnects=3&allowMultiQueries=true'
        , username: server.system.environment.MYSQL_USER
        , password: server.system.environment.MYSQL_PASSWORD
        , connectionLimit:100 // default:-1
        , alwaysSetTimeout:true // default: false
        , validate:false // default: false
    };

    // the following two lines are the 'magic' that turn on ORM for this application.
    this.ormenabled = true;
    this.ormsettings =
    {
        logsql: true,              // we want the engine to output the SQL commands it's running against our DB to the console
        dbcreate: "update"         // we want to have the ORM to create the tables for us to match our CFCs
    };


}
