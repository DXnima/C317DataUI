<template>
  <div class="components-libs-wrapper scrollbar-wrapper">
    <p class="page-title text-center">模板库</p>
    <el-divider/>
    <div class="scroll-wrapper page-list-wrapper">
      <el-scrollbar style="height: 100%;" v-if="pageList.length">
        <div class="page-content" v-loading="loading">
          <!--页面列表-->
          <div class="page-item-wrapper">
            <div class="page-item" v-for="(item, index) in pageList" :key="index">
              <edit-template-libs
                  @refresh="getPageList"
                  @showPreview="showPreviewFn"
                  :pageData="item"/>
            </div>
          </div>
        </div>
      </el-scrollbar>
      <notFundData v-else/>
    </div>
    <!--预览-->
    <previewPage v-if="showPreview" :pageId="previewId" @closePreview="showPreview = false"></previewPage>
  </div>
</template>

<script>
import notFundData from '@client/components/notFundData'
import PreviewPage from "../../home/components/preview-template";
import EditTemplateLibs from "@/pages/editor/components/template-libs/index";

export default {
  name: 'template-libs',
  components: {
    EditTemplateLibs,
    PreviewPage,
    notFundData,
  },
  data() {
    return {
      loading: false,
      pageList: [],
      pageModeList: [],
      searchParams: {
        pageMode: 'h5'
      },
      previewId: '',
      showPreview: false,
    }
  },
  created() {
    this.pageModeList = this.$config.pageModeList;
    this.getPageList();
  },
  methods: {
    /**
     * 切换页面类型
     * */
    handlePageModeClick(val) {
      this.searchParams.pageMode = val.name;
      this.getPageList()
    },
    /**
     * 获取所有页面
     */
    getPageList() {
      this.$API.getPublishTemplates(this.searchParams).then(res => {
        this.pageList = res.body || [];
      })
    },
    showPreviewFn(id) {
      this.previewId = id;
      this.showPreview = true;
    }
  }
}
</script>

<style lang="scss" scoped>
.components-libs-wrapper {
  user-select: none;
  height: 100%;
  padding-top: 60px;
  position: relative;
}

.page-title {
  position: absolute;
  top: 16px;
  left: 0;
  width: 100%;
}

.page-list-wrapper {
  height: 100%;
}

.my-page-nav-list {
  height: 40px;
  line-height: 40px;
  z-index: 2;
  margin-bottom: 20px;

  .my-page-nav-item {
    float: left;
    padding-right: 32px;
    text-align: center;
    cursor: pointer;

    &.active {
      color: $primary;
    }

    &:hover {
      color: $primary;
    }
  }
}

.full-input-w {
  width: 100%;
}

.nav-tabs-label {
  display: inline-block;
  padding: 0 16px;
  height: 60px;
  line-height: 60px;
}

.page-search-wrapper {
  padding: 0;
}

.page-item-wrapper {
  .page-item {
    float: left;
    margin-bottom: 35px;
  }
}
</style>

<style lang="scss">
.my-page-list {
  .page-search-wrapper {
    .el-tabs__header {
      margin: 0;
    }

    .el-tabs__nav-wrap {
      padding: 0 30px;
    }
  }
}

.el-divider--horizontal{
  margin: 0;
}
</style>
