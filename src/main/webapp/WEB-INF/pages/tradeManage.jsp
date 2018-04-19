<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/common/Head.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Insert title here</title>
<link class="uiTheme" rel="stylesheet" type="text/css" href="${basePath}jquery-easyui-1.3.3/themes/<%=themeName %>/easyui.css">
<link rel="stylesheet" type="text/css" href="${basePath}jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="${basePath}jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="${basePath}jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${basePath}jquery-easyui-1.3.3/locale/easyui-lang-zh_CN.js"></script>
<script src="https://img.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
	<script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>
	<script src="https://img.hcharts.cn/highcharts/modules/drilldown.js"></script>


</head>
<body style="margin: 1px;">
	<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

	<script>
	$(function () {
    // Create the chart
    $('#container').highcharts({
        chart: {
            type: 'column'
        },
        title: {
            text: '数据钻取'
        },
        subtitle: {
            text: '单位：万元'
        },
        xAxis: {
            type: 'category'
        },
        legend: {
            enabled: false
        },
        plotOptions: {
            series: {
                borderWidth: 0,
                dataLabels: {
                    enabled: true
                }
            }
        },
        series: [{
            name: '金额',
            colorByPoint: true,
            data: [{
                name: '企业所得税',
                y: 19690,
                drilldown: '企业所得税'
            }, {
                name: '土地增值税',
                y: 26506,
                drilldown: '土地增值税'
            }, {
                name: '房产税',
                y: 60321,
                drilldown: '房产税'
            }, {
                name: '土地占用税',
                y: 77548,
                drilldown: '土地占用税'
            }, {
                name: '印花税',
                y: 13488,
                drilldown: '印花税'
            }]
        }],
        drilldown: {
            series: [{
                id: '企业所得税',
                data: [
                    ['济南', 3621],
                    ['德州', 6486],
                    ['烟台', 4235],
                    ['青岛', 1653],
                    ['菏泽', 3695]
                ]
            }, {
                id: '土地增值税',
                data: [
                    ['济南', 8654],
                    ['德州', 4324],
                    ['烟台', 2346],
                    ['青岛', 6823],
                    ['菏泽', 4359]
                ]
            }, {
                id: '房产税',
                data: [
                    ['济南', 16234],
                    ['德州', 14235],
                    ['烟台', 13623],
                    ['青岛', 8694],
                    ['菏泽', 7535]
                ]
            },{
                id: '土地占用税',
                data: [
                    ['济南', 16423],
                    ['德州', 16545],
                    ['烟台', 13684],
                    ['青岛', 11032],
                    ['菏泽', 19864]
                ]
            }, {
                id: '印花税',
                data: [
                    ['济南', 4032],
                    ['德州', 2014],
                    ['烟台', 3564],
                    ['青岛', 2756],
                    ['菏泽', 1122]
                ]
            }]
        }
    });
});
</script>
</body>
</html>