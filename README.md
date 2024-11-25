mybatis 설정

window > prefreences > xml > xml catalog > 
	user specified entries - add > location: http://mybatis.org/dtd/mybatis-3-config.dtd, key: -//mybatis.org//DTD Config 3.0//EN

		location : http://mybatis.org/dtd/mybatis-3-mapper.dtd, key : -//mybatis.org//DTD Mapper 3.0//EN

xml (wild wb developer) > download external resources like referenced dtd, xsd - check


project > new > source foler > foler name : resource
resource 폴더 우클릭 > new > xml file > file name : mybatis-config > next > create file using a dtd or xml scheme file - check > next > select xml catalog entry > use specified entries (아까 만든거 보임) > config 파일 선택 > next > finish


아래에 새로 생긴 source 탭 <configuration> 태그 안에다가 작성

	<settings>
		<!-- NULL 값을 공백이 아닌 null 로 인식하게끔 -->
		<setting name="jdbcTypeForNull" value="NULL" />
	</settings>

	<environments default="development">
		<environment id="development">
			<!-- 개발자가 commit rollback 을 관리하겠다는 뜼 -->
			<transactionManager type="JDBC" />
			<!-- connection pool 이라는게 있음 -->
			<!-- connection 객체를 여러개 만들어 놓은 공간 거기서 갖다 쓰고 반납한다 -->
			<dataSource type="POOLED">
				<property name="driver"
					value="oracle.jdbc.driver.OracleDriver" />
				<property name="url"
					value="jdbc:oracle:thin:@127.0.01:1521:xe" />
				<property name="username" value="mybatis_test" />
				<property name="password" value="1234" />
			</dataSource>
		</environment>
	</environments>
    

# MemberDao 에서 대신에
resource > mapper > xml 파일을 만든다 설정은 이전과 동일한데 mapper 파일을 선택