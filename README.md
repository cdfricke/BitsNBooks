# BitsNBooks
---
## SQLite Database for an Online Bookstore
---
Authors: Connor Fricke, Ethan Conley, and Sierra Reis for CSE 3241

### Part I

See final report PDF, which contains the relational DB _schema_, _entity-relationship diagram_, and other information.

See required and additional queries in the `queries` directory.

See required `CREATE`, `INSERT`, and `DELETE` scripts in `scripts` directory.

### Part II

For re-creating the database from scratch (for example if the DB binary file were to become corrupted), first run the creation script, `scripts/create.sql`. This will automatically set up all necessary tables as required by the DB schema. 

You may then import backup data stored in the CSV files under `data` (in DataGrip, right click on each table and click "Import Data from File(s)..."). Each CSV is named according to the relation that it belongs to.

Running of the required queries is made easy by the stucture of this repository. For SQL script files and an explanatory README:\

&ensp; For simple queries, see `queries/simple/`.\
&ensp; For advanced queries, see `queries/advanced/`.\
&ensp; For additonal queries, see `queries/extra/`.

See the __User Manual__ (Part I)  for example `INSERT` and `DELETE` statements as provided under `scripts/`.

