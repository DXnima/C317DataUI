<template>
  <div class="page-home">

    <div class="home-side-bar">
      <el-menu
          default-active="/page-list" router
          class="el-menu-vertical-demo"
          @open="handleOpen"
          @close="handleClose"
          active-text-color="#3591dc"
      >
        <el-menu-item style="color: white; background-color: #142d4d" index="/home/page-list">
          <i class="el-icon-mobile" style="  color: white"></i>
          <span slot="title" style="font-size: 24px">我的作品</span>
        </el-menu-item>
        <el-menu-item style="color: white; background-color: #142d4d" index="/home/my-template">
          <i class="el-icon-document" style="color: white"></i>
          <span slot="title" style="font-size: 24px">我的模板</span>
        </el-menu-item>
        <el-menu-item style="color: white; background-color: #142d4d" index="/home/page-data">
          <i class="el-icon-menu" style="color: white"></i>
          <span slot="title" style="font-size: 24px">我的数据</span>
        </el-menu-item>
        <el-menu-item style="color: white; background-color: #142d4d" index="/home/template-list">
          <i class="el-icon-s-shop" style="color: white"></i>
          <span slot="title" style="font-size: 24px">创意模板</span>
        </el-menu-item>
      </el-menu>
    </div>
    <div class="clearfix my-page-list">
      <router-view class="sub-page"/>
    </div>
  </div>
</template>

<script>
	export default {
    methods: {
      handleOpen(key, keyPath) {
        console.log(key, keyPath);
      },
      handleClose(key, keyPath) {
        console.log(key, keyPath);
      }
    }
	}

</script>

<style lang="scss" scoped>
  .page-home {
    display: flex;
    width: 100%;
    height: 100%;
    color: white;
    border-top: 15px solid #2a4a79;
    border-bottom: 15px solid #2a4a79;
    border-right: 15px solid #2a4a79;
    background: #142d4d;
    .home-side-bar{
      width: 328px;
      background-color: #142d4d;
      border-right: 15px solid #2a4a79;
      border-left: 15px solid #2a4a79;

      z-index: 2;
    }
    .my-page-list{
      flex: 1;
      height: 100%;
      .sub-page{
        height: 100%;
      }
    }
  }
</style>
<style lang="scss">
.el-menu {
  border-right: 0;
}
</style>
