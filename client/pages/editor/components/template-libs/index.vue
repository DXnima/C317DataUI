<template>
  <div class="page-thumbnail-panel" v-loading="loading" v-if="pageData">
    <div class="thumbnail-panel-cover">
      <div class="header-mask">
        <div class="details-btn" @click="preview(pageData._id)">预览</div>
      </div>
      <div class="image-wrapper">
        <img :src="pageData.coverImage || defaultCoverImage" alt="" :onerror="defaultImg"/>
      </div>
    </div>
    <div class="page-item-title border-T ellipsis">
      <span class="item-title-i" :title="pageData.title">{{pageData.title || '未命名作品'}}</span>
    </div>
    <div class="border-T thumbnail-panel-btn">
      <div class="btn-wrapper">
        <el-button type="text" size="mini" @click="copyPage">使用模板</el-button>
      </div>
    </div>
  </div>
</template>

<script>
import {
  Dropdown,
  DropdownMenu,
  DropdownItem,
} from 'element-ui'

export default {
  name:'edit-template-libs',
  props: {
    pageData: Object,
  },
  components: {
    [Dropdown.name]: Dropdown,
    [DropdownMenu.name]: DropdownMenu,
    [DropdownItem.name]: DropdownItem
  },
  data() {
    return {
      loading: false,
      defaultCoverImage: require('@/common/images/quark--pagecover-image.png'),
      defaultImg: 'this.src="' + require('@/common/images/quark--pagecover-image.png') + '"',
      operationDataList: []
    }
  },
  methods: {
    // 复制页面
    copyPage() {
      this.loading = true;
      this.$alert(
          "确认使用该模板？使用后，当前编辑页面未保存部分将无法显示?",
          "操作提示",
          {
            confirmButtonText: "确定",
            cancelButtonText: "取消",
            type: "warning",
          }
      ).then(() => {
        this.$API.copyPage({id: this.pageData._id}).then(res => {
          this.loading = false;
          this.$router.push({name: 'Editor', query: {id: res.body._id}})
        }).catch(() => {
          this.loading = false;
        })
      }).catch(()=>{
        this.loading = false;
      })
    },
    // 预览
    preview(id) {
      this.$emit('showPreview', id)
    }
  }
}
</script>

<style lang="scss" scoped>
.page-thumbnail-panel {
  height: 220px;
  width: 150px;
  border-radius: 4px;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  background: white;
  position: relative;
  transition: all 0.28s;
  border-style: solid;
  border-width: 1px;
  border-color: rgba(0, 0, 0, .16);
  &:hover {
    box-shadow: 0 0 16px 0 rgba(0, 0, 0, .16);
    transform: translate3d(0, -2px, 0);
    .header-mask {
      opacity: 1;
    }
  }

  .header-mask {
    position: absolute;
    top: 0;
    left: 0;
    opacity: 0;
    background-color: rgba(0, 0, 0, .3);
    width: 100%;
    height: 100%;
    border-radius: 4px 4px 0 0;
    padding-top: 52px;
    text-align: center;
    transition: top .28s ease, opacity .28s ease, height .28s ease;
    .details-btn {
      display: inline-block;
      width: 120px;
      height: 44px;
      font-size: 18px;
      line-height: 44px;
      border-radius: 22px;
      border: 1px solid #fff;
      color: #fff;
      cursor: pointer;
    }
  }
}

.thumbnail-panel-cover {
  flex: 1;
  position: relative;
  height: calc(100% - 72px);
  .image-wrapper {
    width: 100%;
    height: 100%;
    overflow: hidden;
    padding: 5px;
    z-index: 10;
    img {
      display: block;
      width: 100%;
      height: 100%;
    }
  }
}

.page-item-title {
  height: 36px;
  line-height: 36px;
  padding: 0 8px;
  font-size: 14px;
}

.thumbnail-panel-btn {
  height: 36px;
  width: 100%;
  display: flex;
  flex-direction: row;
  .btn-wrapper {
    flex: 1;
    text-align: center;
  }
}
</style>
