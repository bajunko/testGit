java -cp h2-1.3.152.jar org.h2.tools.RunScript -url "jdbc:h2:file:d:/razv/djelokrug-cgz/Q41Ucenje/database/q41-ucenje;MODE=DB2" -user "sa" -password "" -script q41ucenje_common_schema.ddl
java -cp h2-1.3.152.jar org.h2.tools.RunScript -url "jdbc:h2:file:d:/razv/djelokrug-cgz/Q41Ucenje/database/q41-ucenje;MODE=DB2;schema=DEV" -user "sa" -password "" -script q41ucenje.ddl
