/*
* jdbc 数据源连接
**/
import $axios from "@/service/httpServer";
const server='http://localhost:8400';

// 获取连接类型
export const getType = p => $axios.get(`${server}/api/jdbc/type`, p)
// 获取指定连接类型的端口 ?type=mysql
export const getPort = p => $axios.get(`${server}/api/jdbc/port`, p)
// 修改数据库连接信息 ?id=5ff2cb38b5b88f2809502f22
export const deleteConn = p => $axios.get(`${server}/api/jdbc/delete`, p)

/**
 * 连接数据库获取表名
     {
        "dbType": "mysql",
        "dbIp": "localhost",
        "dbPort": "3306",
        "dbName": "table",
        "dbUserName": "root",
        "dbUserPassword": "root"
    }
* */
export const connection = p => $axios.post(`${server}/api/jdbc/connection`, p)

/**
 * 获取指定数据库指定表数据
    {
        "id": "5ff2c969bf2a4b5e917af01c",
        "tableName": "hours"
    }
 * @param p
 * @returns {AxiosPromise}
 */
export const getTableData = p => $axios.post(`${server}/api/jdbc/getTableData`, p)

/**
 * 修改连接信息
    {
        "id": "5ff2cb38b5b88f2809502f22",
        "name": "123",
        "connect":{
        "dbType": "mysql",
            "dbIp": "www.baidu.com",
            "dbPort": "3306",
            "dbName": "table",
            "dbUserName": "root",
            "dbUserPassword": "root"
        }
    }
 */
export const updateConn = p => $axios.post(`${server}/api/jdbc/update`, p)

