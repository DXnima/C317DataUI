<template>
  <el-form-item label="图片列表：">
    <div v-for="(item, index) in tempValue" :key="index">
      <imageSelect :url.sync="item.url" @change="change"/>
      <span class="imageSelect-btn" @click="add(item.url, index)">
        <i class="el-icon-circle-plus-outline selectIco"></i>
      </span>
      <span class="imageSelect-btn" @click="dele(item.url, index)">
        <i class="el-icon-remove-outline selectIco"></i>
      </span>
    </div>
  </el-form-item>
</template>

<script>
	import imageSelect from '@/components/image-manage/image-select'

	export default {
		name: "attr-qk-imageSrcList",
		props: {
			imageSrcList: {
				type: Array,
        default: () => []
      }
		},
		components: {
			imageSelect
		},
		data() {
			return {
				tempValue: []
			}
		},
		created() {
			this.initData()
		},
		watch: {
			imageSrc() {
				this.initData()
			}
		},
		methods: {
			initData() {
				let list = [];
				this.imageSrcList.forEach(item => {
					list.push({url: item})
				})
				this.tempValue = list;
			},
			getResultImageSrcList() {
				let list = [];
				for (let i = 0, len = this.tempValue.length; i < len; i++) {
					list.push(this.tempValue[i].url)
				}
				return list
			},
			change() {
				this.$emit('update:imageSrcList', this.getResultImageSrcList());
			},
      add(item, index){
        this.imageSrcList.splice(index, 0, item);
        this.initData();
      },
      dele(item, index){
        this.imageSrcList.splice(index, 1);
        this.initData();
      }
		}
	}
</script>

<style scoped>
.selectIco:hover{
  background: #1ab194;
  cursor: pointer;
}
</style>
