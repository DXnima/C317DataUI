<template>
  <div class="components-image-libs-wrapper">
    <div class="excel-lib">
      <div>
        <el-upload
          action=""
          accept="csv,xlsx,xls"
          :show-file-list="false"
          :before-upload="beforeUpload"
          :on-change="uploadSuccess"
          :auto-upload="false"
        >
          <el-button size="small" type="primary">导入excel</el-button>
        </el-upload>
      </div>
      <div>
        <el-button
          size="small"
          type="primary"
          class="database"
          @click="makeConnection"
          >连接数据库</el-button
        >
      </div>
      <div>
        <el-button
          size="small"
          type="primary"
          @click="deleteData"
          class="deleteData"
          >删除数据</el-button
        >
      </div>
    </div>
    <div class="dataView">
      <div class="menu">
        <el-menu class="el-menu-vertical-demo" background-color="#142D4D" router>
          <el-submenu
            v-for="(item, index) in menuData"
            :key="index"
            :index="item.id"
            :v-if="menuData.length"
          >
            <template slot="title">{{ item.title }}</template>
            <el-menu-item
              v-for="(children, index) in item.children"
              :index="children.url"
              :key="index"
            >
              {{ children.title }}
            </el-menu-item>
          </el-submenu>
        </el-menu>
      </div>
      <div class="dataPage">
        <router-view v-if="this.$route.query.id" />
        <NotFundData v-else />
      </div>
      <el-dialog title="数据库配置" :visible.sync="dialogVisible" width="35%">
        <div>
          <el-tabs
            v-model="activeName"
            :tab-position="tabPosition"
            :before-leave="beforeTabLeave"
            style="height: 50%"
          >
            <el-tab-pane label="配置" name="first">
              <el-form
                ref="form"
                :model="form"
                :rules="rules"
                label-width="100px"
              >
                <el-form-item label="数据库类型" prop="dbType">
                  <el-select v-model="form.dbType" placeholder="请选择数据库类型" @change="changeType">
                    <el-option
                      :label="item.name"
                      :value="item.name"
                      v-for="(item, i) in this.dbList"
                      :key="i"
                    ></el-option>
                  </el-select>
                </el-form-item>
                <el-form-item label="数据库地址" prop="dbIp">
                  <el-input v-model="form.dbIp"></el-input>
                </el-form-item>
                <el-form-item label="端口号" prop="dbPort">
                  <el-input v-model="form.dbPort"></el-input>
                </el-form-item>
                <el-form-item label="数据库名称" prop="dbName">
                  <el-input v-model="form.dbName"></el-input>
                </el-form-item>

                <el-form-item label="用户名" prop="dbUserName">
                  <el-input v-model="form.dbUserName"></el-input>
                </el-form-item>
                <el-form-item label="登录密码" prop="dbUserPassword">
                  <el-input
                    v-model="form.dbUserPassword"
                    type="password"
                    auto-complete="off"
                  ></el-input>
                </el-form-item>
                <el-form-item label="JDBC URL" prop="dbUrl">
                  <el-input v-model="form.dbUrl"></el-input>
                  <el-link class="white" type="info" href="https://docs.oracle.com/cd/E57185_01/ESTUG/apbs02s04s01.html" target="_blank">JDBC URL官方使用说明</el-link>
                </el-form-item>
              </el-form>
              <el-button
                type="primary"
                size="small"
                style="display: block; margin: 0 auto"
                @click="cnnbtn"
                >建立连接</el-button
              >
            </el-tab-pane>
            <el-tab-pane label="导入" name="second" lazy>
              <el-table
                ref="singleTable"
                :data="tableNameList"
                :show-header="false"
                highlight-current-row
                @current-change="handleCurrentChange"
                style="width: 100%"
                max-height="370"
              >
                <el-table-column property="name" label="文件名">
                </el-table-column>
              </el-table>
              <br />
              <el-button
                type="primary"
                size="small"
                style="display: block; margin: 0 auto"
                @click="btnImport"
                >导入</el-button
              >
            </el-tab-pane>
          </el-tabs>
        </div>
        <!-- <span slot="footer" class="dialog-footer">
          <el-button @click="dialogVisible = false">取 消</el-button>
          <el-button type="primary" @click="dialogVisible = false"
            >确 定</el-button
          >
        </span> -->
      </el-dialog>
    </div>
  </div>
</template>

<script>
import XLSX from "xlsx";
import NotFundData from "@/components/notFundData";

export default {
  name: "data-manage",
  components: { NotFundData },
  data() {
    return {
      activeName: "first",
      form: {
        dbIp: "",
        dbPort: "",
        dbName: "",
        dbType: "",
        dbUserName: "",
        dbUserPassword: "",
        dbUrl:""
      },
      rules: {
        dbIp: [
          { required: true, message: "请输入数据库地址", trigger: "blur" },
        ],
        dbPort: [{ required: true, message: "请输入端口号", trigger: "blur" }],
        dbName: [
          { required: true, message: "请输入数据库名称", trigger: "blur" },
          {
            min: 3,
            max: 16,
            message: "长度在 3 到 16 个字符",
            trigger: "blur",
          },
        ],
        dbType: [
          { required: true, message: "请选择数据库类型", trigger: "blur" },
        ],
        dbUserName: [
          { required: true, message: "请输入用户名", trigger: "blur" },
        ],
        dbUserPassword: [{ required: true, message: "请输入密码", trigger: "blur" }],
      },
      tabPosition: "left",
      dialogVisible: false, //控制弹窗显示
      selectName: "",
      selectId: "",
      uploading: false,
      hasLoadData: false,
      selectdbId: "",
      tableNameList: [],
      dbList: [],
      menuData: [
        {
          title: "本地数据",
          id: "1",
          children: [
            // {
            //   id: "11",
            //   title: "表格1",
            //   url: "/home/page-data/excel-data?id=1",
            // },
          ],
        },
      ],
    };
  },
  mounted() {
    this.getAllFiels();
  },
  created() {},
  methods: {
    //删除数据
    deleteData() {
      if (this.$route.query.id != null) {
        this.$API.deleteData({ _id: this.$route.query.id }).then(() => {
          this.$message.success("删除成功");
          this.$router.replace("/home/page-data/excel-data");
          this.getAllFiels();
        });
      } else {
        this.$message.error("请先选择要删除的数据");
      }
    },
    //连接数据库按钮事件
    makeConnection() {
      this.dialogVisible = true;
      this.dbList=[];
      this.$API.getType().then((res) => {
        for (let i in res.data) {
          this.dbList.push({ name: res.data[i] });
        }
      });
    },
    changeType(d){
      this.$API.getPort({type:d}).then((res) => {
        this.form.dbPort=res.data;
      });
    },
    //选取对应文件
    handleCurrentChange(val) {
      if (val != null) {
        this.selectName = val.name;
      }
    },
    //从数据库选取文件导入mongodb
    btnImport() {
      // 获取指定表数据
      let data = {
        id: this.selectdbId, //id
        tableName: this.selectName, //表名
      };
      this.$API.getTableData(data).then((res) => {
        let newdata = this.vChartJson2Csv(res.data.rows, res.data.columns);
        let d = {
          name: this.selectName,
          data: [{ name: this.selectName, rows: newdata.rows }],
        };
        this.$API
          .addData(d)
          .then(() => {
            // console.log(res.body);
            this.dialogVisible = false;
            this.$message.success("导入成功");
            this.getAllFiels();
            this.activeName = "first";
          })
          .catch(() => {});
      });
    },
    //禁止标签页切换
    beforeTabLeave() {
      if (this.form.dbUserName == "") return false;
    },
    cnnbtn() {
      this.$refs.form.validate((valid) => {
        if (valid == true) {
          this.connectdb();
        }
      });
    },
    //连接数据库
    connectdb() {
      this.$API.connection(this.form).then((res) => {
        if (res.status === 0) {
          this.selectdbId = res.data._id;
          this.activeName = "second";
          for (let i in res.data.table_names) {
            this.tableNameList.push({ name: res.data.table_names[i] });
          }
        } else {
          this.$message.error("数据库连接错误："+res.msg);
        }
      });
    },
    //获取当前mongodb中存储的所有数据
    getAllFiels() {
      this.$API.getMyData().then((res) => {
        let file = res.body;
        this.menuData[0]["children"] = [];
        for (let i in file) {
          this.menuData[0]["children"].push({
            id: file[i]._id,
            title: file[i].name,
            url: "/home/page-data/excel-data?id=" + file[i]._id,
          });
        }
      });
    },
    //上传文件之前
    beforeUpload(file) {
      let temp1 = file.name.split(".");
      let temp = temp1[temp1.length - 1];
      if (!["csv", "xls", "xlsx"].includes(temp)) {
        this.$message.error("请上传csv/xls/xlsx文件");
        return false;
      }
      if (file.size > 2 * 1024 * 1024) {
        this.$message.error("不能超过2M！");
        return false;
      }
      return true;
    },
    //上传文件成功之后
    uploadSuccess(file) {
      const files = file.raw;
      //读取excel文件数据
      let reader = new FileReader();
      reader.onload = (e) => {
        let data = e.target.result,
          fixedData = this.fixData(data),
          workbook = XLSX.read(btoa(fixedData), { type: "base64" });
        let newdata = this.stox(workbook);
        let d = {
          name: file.name,
          data: newdata,
        };
        this.$API.addData(d).then(() => {
          this.$message.success("导入成功");
          this.getAllFiels();
        });
      };
      reader.readAsArrayBuffer(files);
    },
    stox(wb) {
      let out = [];
      wb.SheetNames.forEach(function (name) {
        let o = { name: name, rows: {} };
        let ws = wb.Sheets[name];
        let aoa = XLSX.utils.sheet_to_json(ws, { raw: false, header: 1 });
        aoa.forEach(function (r, i) {
          let cells = {};
          r.forEach(function (c, j) {
            cells[j] = { text: c };
          });
          o.rows[i] = { cells: cells };
        });
        out.push(o);
      });
      return out;
    },
    fixData(data) {
      let o = "",
        l = 0,
        w = 10240;
      for (; l < data.byteLength / w; ++l)
        o += String.fromCharCode.apply(
          null,
          new Uint8Array(data.slice(l * w, l * w + w))
        );
      o += String.fromCharCode.apply(null, new Uint8Array(data.slice(l * w)));
      return o;
    },
    vChartJson2Csv(rowsV, closV) {
      let row = rowsV.map((item) => {
        const cells = {};
        let index = 0;
        for (let i in item) {
          cells[index] = { text: item[i] };
          index++;
        }
        return cells;
      });
      const cols = {};
      for (let i in closV) {
        cols[i] = { text: closV[i] };
      }
      const rows = {};
      for (let a = 1; a <= row.length; a++) {
        rows[a] = { cells: row[a - 1] };
      }
      let col = { 0: { cells: cols } };
      let dat = Object.assign(rows, col);
      let data = { rows: dat, cols: { len: closV.length } };
      return data;
    },
    getJdbcUrl( DB_TYPE,  dbIp,  dbPort, dbName) {
      let jdbcUrl="";
      if ("sqlserver"===DB_TYPE) {
        //jdbc:sqlserver://localhost:3433;DatabaseName=dbname
        jdbcUrl = `jdbc:sqlserver://${dbIp}:${dbPort};DatabaseName=${dbName}`;
      } else if ("oracle"===DB_TYPE) {
        //jdbc:oracle:thin:@[HOST_NAME]:PORT:[DATABASE_NAME]
        jdbcUrl = `jdbc:oracle:thin:@${dbIp}:${dbPort}/${dbName}`;
      } else if ("oracleSid"===DB_TYPE) {
        //jdbc:oracle:thin:@[HOST_NAME]:PORT:[DATABASE_NAME]
        jdbcUrl = `jdbc:oracle:thin:@${dbIp}:${dbPort}:${dbName}`;
      } else if ("mysql"===DB_TYPE) {
        //jdbc:mysql://bad_ip:3306/database
        jdbcUrl = `jdbc:mysql://${dbIp}:${dbPort}/${dbName}`;
      } else if ("postgresql"===DB_TYPE) {
        jdbcUrl = `jdbc:postgresql://${dbIp}:${dbPort}/${dbName}`;
      } else if ("sqlserverold"===DB_TYPE) {
        jdbcUrl = `jdbc:jtds:sqlserver://${dbIp}:${dbPort}/${dbName}`;
      } else if ("dm"===DB_TYPE) {
        jdbcUrl = `jdbc:dm://${dbIp}:${dbPort}/${dbName}`;
      } else if ("h2Server"===DB_TYPE) {
        jdbcUrl = `jdbc:h2:tcp://${dbIp}:${dbPort}/${dbName}`;
      }
      return jdbcUrl;
    }
  },
  watch:{
    'form.dbType':function (){
      this.form.dbUrl=this.getJdbcUrl(this.form.dbType,this.form.dbIp,this.form.dbPort,this.form.dbName);
    },
    'form.dbIp':function (){
      this.form.dbUrl=this.getJdbcUrl(this.form.dbType,this.form.dbIp,this.form.dbPort,this.form.dbName);
    },
    'form.dbPort':function (){
      this.form.dbUrl=this.getJdbcUrl(this.form.dbType,this.form.dbIp,this.form.dbPort,this.form.dbName);
    },
    'form.dbName':function (){
      this.form.dbUrl=this.getJdbcUrl(this.form.dbType,this.form.dbIp,this.form.dbPort,this.form.dbName);
    },
  }
};
</script>

<style lang="less" scoped>
.components-image-libs-wrapper {
  padding: 25px;
  height: 100%;
}
.el-button{
  color: white;
}
.excel-lib {
  top: -10px;
  position: relative;
  display: flex;
}
.database {
  position: absolute;
  left: 100px;
}
.deleteData {
  position: absolute;
  left: 208px;
}

.el-menu-vertical-demo {
  background: none;
  height: 80%;
}

.el-submenu {
  min-width: 0;
  border-right: none;
  .el-menu-item{
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }
}

.dataView {
  width: 100%;
  height: 100%;
}

.menu {
  width: 20%;
  height: 100%;
  float: left;
}

.dataPage {
  width: 80%;
  height: 80%;
  float: left;
}
</style>
