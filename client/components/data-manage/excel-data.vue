<template>
  <!--web spreadsheet组件-->
  <div id="x-spreadsheet-demo" class="x-sheet"></div>
</template>

<script>
import Spreadsheet from "x-data-spreadsheet";
import zhCN from "x-data-spreadsheet/src/locale/zh-cn";
//设置中文
Spreadsheet.locale("zh-cn", zhCN);
export default {
  name: "excel-data",
  data() {
    return {
      xs: null,
      fileid: "",
      exceldata: {
        name: "",
        data: [],
      },
    };
  },
  mounted() {
    this.fileid = this.$route.query.id;
    this.getFileById(this.fileid);
  },
  created() {},
  methods: {
    //从mongodb数据库拿数据
    getFileById(val) {
      this.$API.getDataById({ _id: val }).then((res) => {
        // console.log(res.body);
        if (res.body != null) {
          this.init(res.body.data);
        }
      });
    },
    init(val) {
      let div = document.getElementsByClassName("dataPage");
      let h = div[0].offsetHeight;
      let w = div[0].offsetWidth;
      this.xs = new Spreadsheet("#x-spreadsheet-demo", {
        mode: "read",
        showToolbar: false,
        showGrid: true,
        showContextmenu: false,
        view: {
          height: () => h - 25,
          width: () => w,
        },
      }).loadData(val);
      // .change((cdata) => {
      //   console.log(">>>", cdata);
      // });
      this.xs.bottombar.el.hide();
    },
    //删除数据
    // deleteData() {
    //   this.$API.deleteData({ _id: this.fileid }).then(() => {
    //     this.$message.success("删除成功");
    //     this.$router.replace("/home/page-data/excel-data");
    //   });
    // .catch(() => {});
    // },
  },
  watch: {
    $route() {
      //监听路由变化则更新
      let box = document.getElementsByClassName("x-spreadsheet");
      if (box.length != 0) {
        box[0].remove();
      }
      this.fileid = this.$route.query.id;
      this.getFileById(this.fileid);
    },
  },
};
</script>

<style lang="less" scoped>
</style>
