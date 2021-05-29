<template>
  <el-collapse style="border-bottom: none;">
    <el-collapse-item title="桑基图数据配置："  >
      <el-table :data="sankeyV.links" style="width: 100%" height="300">
        <el-table-column prop="source" label="起结点"/>
        <el-table-column prop="target" label="终结点"/>
        <el-table-column prop="value" label="值" width="50"/>
        <el-table-column label="操作" width="50">
          <template slot-scope="scope">
            <el-button type="text" size="small" @click="deleteRow(scope)">删除</el-button>
          </template>
        </el-table-column>
      </el-table>
      <el-form ref="formName" :rules="rules" :model="form" label-width="80px">
        <el-form-item label="源节点：" prop="source">
          <el-select v-model="form.source" placeholder="请选择" size="mini">
            <el-option
                v-for="item in options"
                :key="item"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="终节点：" prop="target">
          <el-select v-model="form.target" placeholder="请选择" size="mini">
            <el-option
                v-for="item in options"
                :key="item"
                :label="item"
                :value="item">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="输入值：" prop="value">
          <el-input
              style="width: 200px"
              size="mini"
              placeholder="请输入值"
              v-model="form.value"
              clearable>
          </el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="onSubmit">添加</el-button>
          <el-button @click="resetForm">重置</el-button>
        </el-form-item>
      </el-form>
    </el-collapse-item>
  </el-collapse>
</template>

<script>
/*
{
  links: [
    { source: '首页', target: '列表页a', value: 0.5 },
    { source: '首页', target: '列表页b', value: 0.5 },
    { source: '列表页a', target: '内容页a-1', value: 0.1 },
    { source: '列表页a', target: '内容页a-2', value: 0.4 },
    { source: '列表页b', target: '内容页b-1', value: 0.2 },
    { source: '列表页b', target: '内容页b-2', value: 0.3 }
  ]
}
*/
export default {
  name: "attr-qk-sankeyV",
  props: {
    sankeyV: Object,
    chartDataV:Object
  },
  data() {
    return {
      form:{
        source: '',
        target: '',
        value: 0
      },
      rules: {
        source: [
          { required: true, message: '请至少选择一个结点', trigger: 'change' }
        ],
        target: [
          { required: true, message: '请至少选择一个结点', trigger: 'change' }
        ],
        value: [
          {required: true, message: '请填写数值', trigger: 'change' }
        ]
      },
      options: [],
      sankey:this.sankeyV
    }
  },
  methods:{
    onSubmit(){
      this.$refs['formName'].validate((valid) => {
        if (valid) {
          //深拷贝
          this.sankeyV.links.push(JSON.parse(JSON.stringify(this.form)));
        } else {
          return false;
        }
      });
    },
    resetForm(){
      this.$refs['formName'].resetFields();
    },
    deleteRow(row){
      this.sankeyV.links.splice(row.$index, 1);
      this.$message.success("删除成功！");
    }
  },
  watch: {
    chartDataV(a) {
      let b=[]
      a.rows.forEach(item=>{
        b.push(item[a.columns[0]])
      })
      this.options = b;
    }
  }
}
</script>

<style lang="less" scoped>
.box1{
  padding-bottom: 10px;
}
</style>
