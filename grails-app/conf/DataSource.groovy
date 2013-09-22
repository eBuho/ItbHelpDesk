dataSource {
    pooled = true
	dialect = "org.hibernate.dialect.Oracle10gDialect"
	driverClassName = "oracle.jdbc.OracleDriver"	
    username = "helpdesk"
    password = "helpdesk"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:oracle:thin:@localhost:1521:XE"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:oracle:thin:@localhost:1521:XE"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:oracle:thin:@localhost:1521:XE"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}
