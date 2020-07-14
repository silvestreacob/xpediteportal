<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?php echo (!empty($user['photo'])) ? './images/'.$user['photo'] : './images/profile.jpg'; ?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $user['firstname'].' '.$user['lastname']; ?></p>
          <a><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MANAGE</li>
        	<li class=""><a href="dashboard.php"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
			<li class=""><a href="account.php"><i class="fa fa-users"></i> <span>Change Password</span></a></li>

        <li class="header">TOOLS</li>
			<li class=""><a href="overtime.php"><i class="fa fa-file-text"></i> <span>Overtime</span></a></li>
			<li class=""><a href="leaves.php"><i class="fa fa-calendar"></i> <span>Leaves (coming soon)</span></a></li>
			<li><a href="payslip.php"><i class="fa fa-files-o"></i> <span>View Payslip</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>