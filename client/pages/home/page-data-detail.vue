<template>
  <div class="page-data-detail">
    <div class="scroll-wrapper page-list-wrapper">
      <el-scrollbar style="height: 100%" v-if="pageList.length">
        <div class="page-content" v-loading="loading">
          <div class="page-item-wrapper">
            <div class="page-item" v-for="(d, index) in pageData" :key="index">
              <el-card style="width: 400px; height: 400px">
                <div slot="header">
                  <span>{{ "数据" + (index+1) }}</span>
                </div>
                <div>
                  <el-table :data="d.data.rows" style="width: 100%" height="300" border size="small"
                            :header-cell-style="{color:'#ffffff'}">
                    <el-table-column :prop="d.data.columns[i]" :label="d.data.columns[i]" v-for="(item, i) in d.data.columns" :key="i">
                    </el-table-column
                  ></el-table>
                </div>
              </el-card>
            </div>
          </div>
        </div>
      </el-scrollbar>
    </div>
    <notFundData v-if="pageData.length === 0" />
  </div>
</template>

<script>
import notFundData from "@client/components/notFundData";
export default {
  components: {
    notFundData,
  },
  data() {
    return {
      id: "",
      pageList: [],
      pageData: [],
      loading: false,
    };
  },
  mounted() {
    this.loading = true;
  },
  created() {
    this.id = this.$route.query.id || "";
    this.initPageData();
  },
  methods: {
    /**
     * 获取指定页面的数据
     */
    initPageData() {
      this.$API
        .getPageDetail({ pageId: this.id })
        .then((res) => {
          this.loading = false;
          this.pageList = res.body.pages;
          this.getPageData(this.pageList);
        })
        .catch(() => {});
    },
    getPageData(pageList) {
      let data = [];
      pageList.forEach((item) => {
        item.elements.forEach((ele) => {
          if (ele.propsValue.chartDataV) {
            data.push({
              name: ele.uuid,
              data: ele.propsValue.chartDataV,
            });
          }
        });
      });
      this.pageData = data;
    },
  },
};
</script>

<style lang="scss" scoped>
.page-data-list {
  height: 100%;
}
.el-collapse {
  margin: 10px;
}
.el-collapse-item {
  text-indent: 2em;
}
.qk-table {
  margin-top: 12px;
  margin-bottom: 12px;
}
.page-item-wrapper {
  .page-item {
    float: left;
    margin-right: 20px;
    margin-bottom: 40px;
  }
}
.page-list-wrapper {
  height: 100%;
}
</style>
