<!-- jQuery 3 -->
<script src="./bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="./bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- DataTables -->
<script src="./bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="./bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="./bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts 
<script src="./bower_components/raphael/raphael.min.js"></script>
<script src="./bower_components/morris.js/morris.min.js"></script>
<!-- ChartJS 
<script src="./bower_components/chart.js/Chart.js"></script>
<!-- Sparkline
<script src="./bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap 
<script src="./plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="./plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart
<script src="./bower_components/jquery-knob/dist/jquery.knob.min.js"></script>

<!-- daterangepicker -->
<script src="./bower_components/moment/min/moment.min.js"></script>
<script src="./bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="./bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="./plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="./plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="./bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="./bower_components/fastclick/lib/fastclick.js"></script>

<!-- AdminLTE App -->
<script src="./dist/js/adminlte.min.js"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) 
<script src="./dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes 
<script src="./dist/js/demo.js"></script>-->


<script>
  $(function () {
    $('#example1').DataTable({
	  responsive: true,
	  "order": [[ 0, "desc" ]]
	})
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
<script>
$(function(){
  /** add active class and stay opened when selected */
  var url = window.location;

  // for sidebar menu entirely but not cover treeview
  $('ul.sidebar-menu a').filter(function() {
     return this.href == url;
  }).parent().addClass('active');

  // for treeview
  $('ul.treeview-menu a').filter(function() {
     return this.href == url;
  }).parentsUntil(".sidebar-menu > .treeview-menu").addClass('active');
  
});
</script>

<script>
$(function(){
	//Date picker
  $('#datepicker_add').datepicker({
    autoclose: true,
    format: 'yyyy-mm-dd'
  })
  $('#datepicker_edit').datepicker({
    autoclose: true,
    format: 'yyyy-mm-dd'
  })

  //Timepicker
  $('.timepicker').timepicker({
    showInputs: false
  })

  //Date range picker
  $('#reservation').daterangepicker()
  
  //Date range picker with time picker for overtime form
  $('#overtimehours').daterangepicker({ 
		timePicker: true,
		autoUpdateInput: true,
		timePickerIncrement: 30, 
		locale:{
			format: 'MM/DD hh:mm A',
			cancelLabel: 'Clear'}

  });
  
  $('#overtimehours').val('');
	
  $('#overtimehours').on('apply.daterangepicker', function(ev, picker) {  
		var a = picker.startDate.format('MM/DD hh:mm A');
		var b = picker.endDate.format('MM/DD hh:mm A');
	  
		var startDate = new Date(a);
		var endDate = new Date(b);
		var diff = endDate.getTime() - startDate.getTime();
		var hours = Math.floor(diff / 1000 / 60 / 60);
		diff -= hours * 1000 * 60 * 60;
		var mins = Math.floor(diff / 1000 / 60);
		mins = mins/60;
		
		var num = hours + mins;
		if (num > 4)
		   num = num - 1;


		console.log(num);
		$('#interval').val(num);
  });


   $('#overtimehours').on('cancel.daterangepicker', function(ev, picker) {
	  $('#interval').val('');
	  $('#overtimehours').val('');
  });
  


  //Date range as a button
  $('#daterange-btn').daterangepicker(
    {
      ranges   : {
        'Today'       : [moment(), moment()],
        'Yesterday'   : [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
        'Last 7 Days' : [moment().subtract(6, 'days'), moment()],
        'Last 30 Days': [moment().subtract(29, 'days'), moment()],
        'This Month'  : [moment().startOf('month'), moment().endOf('month')],
        'Last Month'  : [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
      },
      startDate: moment().subtract(29, 'days'),
      endDate  : moment()
    },
    function (start, end) {
      $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
    }
  )
  
  	//Date picker leaves
  $('#datepicker_add').datepicker({
    autoclose: true,
    format: 'yyyy-mm-dd'
  })
  $('#datepicker_edit').datepicker({
    autoclose: true,
    format: 'yyyy-mm-dd'
  })
});
</script>

<!-- CryptoJS  
<script src="./bower_components/crypto-js/build/components/core.js"></script>-->
<script src="./bower_components/crypto-js/build/rollups/aes.js"></script>
<script src="./dist/js/aes-json-format.js"></script>

<script>
$(function(){
var CryptoJSAesJson = {
	stringify: function (cipherParams) {
		var j = {ct: cipherParams.ciphertext.toString(CryptoJS.enc.Base64)};
		if (cipherParams.iv) j.iv = cipherParams.iv.toString();
		if (cipherParams.salt) j.s = cipherParams.salt.toString();
		return JSON.stringify(j);
	},
	parse: function (jsonStr) {
		var j = JSON.parse(jsonStr);
		var cipherParams = CryptoJS.lib.CipherParams.create({ciphertext: CryptoJS.enc.Base64.parse(j.ct)});
		if (j.iv) cipherParams.iv = CryptoJS.enc.Hex.parse(j.iv)
		if (j.s) cipherParams.salt = CryptoJS.enc.Hex.parse(j.s)
		return cipherParams;
	}
}

$('.print').click(function() {
    var urlid = document.getElementById("id").value;	
	var encrypted = CryptoJS.AES.encrypt(JSON.stringify(urlid), "my passphrase", {format: CryptoJSAesJson}).toString();
    window.open('payslip-print.php?payslip='+encrypted);
	
  })
		
 });
</script>