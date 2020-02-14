<?php require_once "header.php";?>

    <!--  wrapper -->
    <div id="wrapper">

        <?php 
			  require_once "menu_left.php";
		?>

        <!--  page-wrapper -->
        <div id="page-wrapper">

         <div class="row">
                <!-- Page Header -->
                <br/>
                <div class="col-lg-12">
                    <div class="panel panel-body panel-primary alert-danger"><h3><font color="#428bca">ยินดีต้อนรับสู่ระบบจัดการ <?php echo $title_web;?></font></h3></div>
                </div>
                <!--End Page Header -->
            </div>

            <!--Simple table example -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> ข้อมูลการสั่งซื้อทั้งหมดที่ทำการจ่ายเงินแล้ว
                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                        <thead>
                                            <tr>
                                                    <th class="small">No.</th>
                                                    <th class="small">Number Order</th>
                                                    <th class="small">ชื่อลูกค้า</th>
                                                    <th class="small">Email</th>
                                                    <th class="small">เบอร์ติดต่อ</th>
                                                    <th class="small">จำนวนสั่งซื้อ (ชิ้น)</th>
                                                    <th class="small">จำนวนเงิน (บาท)</th>
                                                    <th class="small">วันที่ทำการโอนเงิน</th>
                                                    <th class="small">สถานะ</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                          
 <?php
                
//แสดงข้อมูลตามเงื่อนไข
$sql = $conn->query("select * from orders o ,member m where o.Mem_ID = m.Mem_ID order by o.Ord_ID desc");

  $i = 1;

  while ($show = $sql->fetch_assoc()) {
 

if($show['Ord_Status']==0){$status =  '<span class=text-warning>รอชำระเงิน</span>';}
else if($show['Ord_Status']==1){$status =  '<span class=text-info>ตรวจสอบชำระเงิน</span>';}
else if($show['Ord_Status']==2){$status =  '<span class=text-success>ชำระเงินเรียบร้อย</span>';}
else if($show['Ord_Status']==3){$status =  '<span class=text-primary>จัดส่งเรียบร้อย</span>';}
else if($show['Ord_Status']==4){$status =  '<span class=text-danger>ยกเลิกรายการ</span>';}

?>
                  <tr>
                  <td class="small" align="center"><?php echo $i++;?></div></td>
                  <td class="small"><a href="../print_order.php?id=<?php echo $show['Ord_ID'];?>" target="_blank"><?php echo $show['Ord_Number'];?></a></td>
                  <td class="small"><?php echo $show['Mem_Name'];?></td>
                  <td class="small"><?php echo $show['Mem_Email'];?></td>
                  <td class="small"><?php echo $show['Mem_Tel'];?></td>
                  <td class="small" align="center"><?php echo $show['Ord_AmountTotal'];?></td>
                  <td class="small" align="center"><?php echo number_format($show['Ord_PriceTotal'],0);?></td>
                  <td class="small"><?php echo $show['Ord_DateBuy'];?></td>
                  <td class="small"><?php echo $status;?></td>
                  
                                            </tr>
                                            <?php } ?>

                                            <tr><td colspan="10"><?php Chk_Row($sql);?></td></tr>

                                        </tbody>
                                    </table>
                                    </div>

                                </div>

                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!--End simple table example -->
                     <!-- ============== Graph ================= -->

            <!--Simple table example -->
            <div class="panel panel-primary">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> สรุปยอดขายและสินค้ายอดนิยม
                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                <?php
$res_c = $conn->query("SELECT Pro_Name , Pro_Buy FROM `product`");


 
if (!$res_c) {
    die('<p><strong style="color:#FF0000">!! Invalid query:</strong> ' . $mysqli->error.'</p>');
}
?>
<script src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script type="text/javascript">
 $(function () {
    $('#piechart').highcharts({
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
        title: {
            text: 'กราฟแสดงจำนวนยอดขายสินค้าทั้งหมด'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.y:,.0f}  ({point.percentage:.1f}%)</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.y:,.0f} (<strong>{point.percentage:.1f} %</strong>)',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
  credits: {
   enabled: false
  },
        series: [{
            name: "Total",
            colorByPoint: true,
            data: [
   <?php
   $c_field = $res_c->field_count-1;
    $c=0; while($row = $res_c->fetch_array(MYSQLI_NUM)){ $c++; ?>
   <?php if($c>1){ ?>,<?php } ?>
    {
     name: "<?php echo htmlspecialchars(addslashes(str_replace("\t","",str_replace("\n","",str_replace("\r","",$row[0]))))); ?>",
     y: <?php echo $row[$c_field]; ?>
    }
   <?php } ?>
   ]
        }]
    });
});
</script>
<!--แสดงกราฟ-->
<div id="piechart"></div>

                                </div>

                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- ============== Graph ================= -->

                    <!-- ================ Graph2 ================ -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> กราฟแสดงยอดขายแยกตามเดือน
                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                <?php



$result = $conn->query("SELECT SUM(Pay_Price) AS total, DATE_FORMAT(Pay_Date, '%M') AS datesave
FROM payment  
GROUP BY DATE_FORMAT(Pay_Date, '%M%')");
$resultchart = $conn->query("SELECT SUM(Pay_Price) AS total, DATE_FORMAT(Pay_Date, '%M') AS datesave
FROM payment  
GROUP BY DATE_FORMAT(Pay_Date, '%M%')");

 
 
 //for chart
$datesave = array();
$total = array();
 
while($rs = mysqli_fetch_array($resultchart)){ 
  $datesave[] = "\"".$rs['datesave']."\""; 
  $total[] = "\"".$rs['total']."\""; 
}
$datesave = implode(",", $datesave); 
$total = implode(",", $total); 
 
?>
 
<h3 align="center">กราฟแสดงยอดขายแยกตามเดือน</h3>
<table width="200" border="1" cellpadding="0"  cellspacing="0" align="center">
  <thead>
  <tr>
    <th width="10%">เดือน</th>
    <th width="10%">ยอดขาย</th>
  </tr>
  </thead>
  
  <?php while($row = mysqli_fetch_array($result)) { ?>
    <tr>
      <td align="center"><?php echo $row['datesave'];?></td>
      <td align="center"><?php echo number_format($row['total'],2);?></td> 
    </tr>
    <?php } ?>
 
</table>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.bundle.js"></script>
<hr>
<p align="center">
 

<canvas id="myChart" width="800px" height="300px"></canvas>
<script>
var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: [<?php echo $datesave;?>
    
        ],
        datasets: [{
            label: 'รายงานแสดงยอดขายแยกตามเดือน (บาท)',
            data: [<?php echo $total;?>
            ],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>  


                                  

                                </div>

                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>     
                    <!-- ================ Graph2 ================ -->
                   
                    </br>
        </div>
        <!-- end page-wrapper -->

    </div>
    <!-- end wrapper -->

</body>

</html>
