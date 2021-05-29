<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="数据配置：">
    <div id="x-spreadsheet-demo" class="qk-table" ref="shape"></div>
    <el-button
      type="primary"
      size="mini"
      @click="showDialogVisible"
      style="display: inline-block"
      >选择数据源</el-button
    >
    <el-button
      type="primary"
      size="mini"
      @click="upData"
      style="display: inline-block"
      >数据同步</el-button
    >
    <el-dialog title="本地数据" :visible.sync="dialogVisible" width="30%">
      <el-table
        ref="singleTable"
        :data="fileList"
        :show-header="false"
        highlight-current-row
        @current-change="handleCurrentChange"
        style="width: 100%"
      >
        <el-table-column type="index" width="30"> </el-table-column>
        <el-table-column property="name" label="文件名"> </el-table-column>
      </el-table>

      <span slot="footer" class="dialog-footer">
        <el-button @click="dialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="getNewDataById">确 定</el-button>
      </span>
    </el-dialog>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
import Spreadsheet from "x-data-spreadsheet";
import zhCN from "x-data-spreadsheet/src/locale/zh-cn";
import Parser from "./excel-parser.js";
Spreadsheet.locale("zh-cn", zhCN);

export default {
  name: "attr-qk-chartDataV",
  props: {
    chartDataV: Object,
  },
  data() {
    return {
      //控制对话框隐藏与显示
      dialogVisible: false,
      tabPosition: "left",
      fileList: [],
      temprows: [],
      tempclos: [],
      //选中行
      currentRow: null,
      selectId: "",
      selectName: "",
      changeData: null,
    };
  },
  mounted() {
    this.tempclos = this.chartDataV.columns;
    this.temprows = this.chartDataV.rows;
    this.init();
  },
  watch: {
    chartDataV() {
      this.tempclos = this.chartDataV.columns;
      this.temprows = this.chartDataV.rows;
    },
    temprows() {
      let chartData = {
        columns: this.tempclos,
        rows: this.temprows,
      };
      // TODO 这里传递值
      this.$emit("update:chartDataV", chartData);
    },
  },
  methods: {
    //将数据更新至数据库
    upData() {
      let d = {
        _id: this.selectId,
        name: this.selectName,
        data: this.changeData,
      };
      if (this.selectId === '')
        this.$message.error("请选择数据源中的数据进行同步！");
      else{
        this.$API
            .upData(d)
            .then(() => {
              this.$message.success("数据同步至数据库成功！");
            })
            .catch(() => {
              this.$message.error("数据同步至数据库失败！");
            });
      }
    },
    //获取所有数据
    getDataList() {
      this.fileList = [];
      this.$API.getMyData().then((res) => {
        for (let i in res.body) {
          this.fileList.push(res.body[i]);
          // console.log(res.body[i]);
        }
      });
    },
    //根据 Id 选取数据
    getNewDataById() {
      this.dialogVisible = false;
      // console.log(this.selectId);
      this.$API.getDataById({ _id: this.selectId }).then((res) => {
        let getData = res.body["data"][0]["rows"];
        let newData = Parser.csv2List(getData);
        let last = Parser.csv2VChartJson(newData);
        this.chartDataV.columns = last.columns;
        this.chartDataV.rows = last.rows;
        this.tempclos = this.chartDataV.columns;
        this.temprows = this.chartDataV.rows;
        let box = document.getElementsByClassName("x-spreadsheet");
        box[0].remove();
        this.init();
        // console.log(last);
      });
    },
    //显示数据源配置窗口
    showDialogVisible() {
      this.dialogVisible = true;
      this.getDataList();
    },
    //数据源配置窗口中获取文件 Id
    handleCurrentChange(val) {
      if (val != null) {
        this.currentRow = val;
        this.selectId = val._id;
        this.selectName = val.name;
      }
    },
    init() {
      let dataV = Parser.vChartJson2Csv(this.temprows, this.tempclos);
      const s = new Spreadsheet("#x-spreadsheet-demo", {
        showToolbar: false,
        showGrid: true,
        row: {
          len: this.temprows.length + 9,
          height: 25,
        },
        view: {
          height: () => 317,
          width: () => 317,
        },
        col: {
          len: this.tempclos.length,
          width: 80,
          indexWidth: 60,
          minWidth: 60,
        },
      })
        .loadData(dataV) // load data
        .change((data) => {
          // data change
          this.changeData = [{ name: data.name, rows: data.rows }];
          // console.log(this.changeData);
          let dlist = Parser.csv2List(data.rows);
          let last = Parser.csv2VChartJson(dlist);

          this.tempclos = last["columns"];
          this.temprows = last["rows"];
        });
      s.bottombar.el.hide();
      // data validation
      // s.validate();
    }
  },
};
</script>

<style scoped>
.chartDataV {
  margin-bottom: 12px;
}
.qk-table {
  margin-top: 12px;
  margin-bottom: 12px;
}
</style>
