$(function () {
  var pieCharts = echarts.init(document.getElementById("pie"));
  var pillarCharts = echarts.init(document.getElementById('pillar'));

  $.ajax({
    type:"GET",
    url:path+"/dashboard/charts",
    dataType:"json",
    success:function(data){
      names = data.names.reverse()
      values = data.values.reverse()
      pillarCharts.setOption({
        title: {
          text: '近一年每月销售利润统计'
        },
        tooltip: {},
        legend: {
          data: ['销售利润(元)']
        },
        xAxis: {
          data: names
        },
        yAxis: {},
        series: [{
          name: '销售利润(元)',
          type: 'bar',
          data: values
        }]
      });

      pieCharts.setOption({
        series: [
          {
            name: '销售利润top5',
            type: 'pie',    // 设置图表类型为饼图
            radius: '65%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
            data: data.pies
          }
        ]
      });
    },
    error:function (data, err) {
      console.log(err)
    }
  });
});