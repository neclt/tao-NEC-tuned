===========
Tunned TAO login in

Includes SQL query rewriting mechanism. Possible to remove comments to enable logging when query from file and what filename.
www_files_path/generis/core/kernel/persistence/smoothsql/class.Class.php

Overwrite SQL query (new file added). You need to check if the request has been changed after the TAO has been installed because the ID in the request can change. User classes ID.
www_files_path/generis/core/kernel/persistence/smoothsql/generis.rdf_user..sql

Optimized SQL Query (modelid in (1,2,3,4 ...) removed and recurring language where condition).
www_files_path/generis/core/kernel/persistence/smoothsql/clas.Resource.php

Optimized SQL Query (modelid in (1,2,3,4 ...) removed.
www_files_path/generis/core/kernel/persistence/smoothsql/clas.Utils.php

Optimized SQL Query (modelid in (1,2,3,4 ...) removed.
www_files_path/vendor/oat-sa/lib-generis-search/src/DbSql/TaoRdf/UnionQuerySerialyser.php

===========

package-tao
===========

Clone repository

    git clone https://github.com/oat-sa/package-tao.git
    
Install via composer missing library and extensions

    composer install
    
Add rw to www-data

    sudo chown -R www-data package-tao

Install TAO

```bash
sudo -u www-data php tao/scripts/taoInstall.php \
--db_driver pdo_mysql \
--db_host localhost \
--db_name taoUnitTest \
--db_user myuser \
--db_pass tao \
--module_namespace http://sample/first.rdf \
--module_url http://myurl \
--user_login admin \
--user_pass admin \
-e taoCe
```

| Optional/Reuired | Parameter           | Description |
| ---------------- | ------------------- | ----------- |
|                  | --db_driver         | Target available sgbd : pdo_pgsql, pdo_mysql, pdo_sqlsrv, pdo_oci. |
|                  | --db_host           | Database location. |
|                  | --db_name           | The Database name corresponds to the Module name. |
| Optional         | --db_pass           | Password to access to the database. |
| Required         | --db_user           | Login to access to the database. |
|                  | --file_path\|-f     | Path to where files should be stored. |
|                  | --timezone\|-t      | Timezone of the install. |
|                  | --install_sent      | |
|                  | --module_lang\|-l   | The default language will be used when the language parameters are not specified for the graphical interface and the data. |
|                  | --module_mode       | The deployment mode allow and deny access to resources regarding the needs of the platform.The test & development mode will enables the debugs tools, the unit tests, and the access to all the resources. The production mode is focused on the security and allow only the required resources to run TAO. |
|                  | --module_namespace  | The module's namespace will be used to identify the data stored by your module. Each data collected by tao is identified uniquely by an URI composed by the module namespace followed by the resource identifier (NAMESPACE#resource). |
| Required         | --module_url\|-url  | The URL to access the module from a web browser. |
| Required         | --user_login\|-u    | The login of the administrator to be created. |
| Required         | --user_pass\|-p     | The password of the administrator. |
|                  | --import_local\|-i  | States if the local.rdf files must be imported or not. |
|                  | --instance_name\|-n | The name of the instance to install. |
|                  | --extensions\|-e    | Comma-separated list of extensions to install. |
|                  | --verbose\|-v       | Verbose mode. |
