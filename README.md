# MyBatis Settings

---

#### window / preferences / xml / xml catalog / user specified entries / catalog entry

##### Add config

###### location: 
```bash 
http://mybatis.org/dtd/mybatis-3-config.dtd
``` 
###### key: 
```bash 
-//mybatis.org//DTD Config 3.0//EN
```

##### Add mapper
###### location : 
```bash
http://mybatis.org/dtd/mybatis-3-mapper.dtd 
```
###### key : 
```bash
-//mybatis.org//DTD Mapper 3.0//EN
```

---

#### window / preferences / xml (wild web developer) /
###### check
`download external resources like referenced dtd, xsd`

---

##### Create new `source folder` under the project directory named `resources`
##### Create `xml file` under the resource folder named `mybatis-config`
##### Click next and check
`create file using a dtd or xml scheme file`
##### Click next select `xml catalog entry`
##### Click `User Specified Entries` select the one with `config`
##### next and finish

#### Inside the `mybatis-config.xml` under inside `<configuration>` tag
``` xml
<settings>
    <setting name="jdbcTypeForNull" value="NULL" />
</settings>
<environments default="development">
    <environment id="development">
      <transactionManager type="JDBC" />
      <dataSource type="POOLED">
          <property name="driver" value="oracle.jdbc.driver.OracleDriver" />
          <property name="url" value="jdbc:oracle:thin:@127.0.0.1:1521:xe" />
          <property name="username" value="mybatis_test" />
          <property name="password" value="1234" />
      </dataSource>
    </environment>
</environments>
```

---

##### Create new `folder` under the resources named `mapper`
##### Create `xml file` under the mapper folder named `member-mapper`
###### (member from member-mapper can be anything you want)
##### Click next and check
`create file using a dtd or xml scheme file`
##### Click next select `xml catalog entry`
##### Click `User Specified Entries` select the one with `mapper`
##### next and finish

###### This is where SQL is written

---

#### Happy hacking