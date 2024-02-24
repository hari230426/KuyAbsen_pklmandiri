
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?php echo base_url() ?>assets/dist/img/avatar01.png" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>KuyAbsen</p> <br>
                
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <?php if ($this->ion_auth->is_admin()) : ?>
        <ul class="sidebar-menu">
            <li>
                <a href="<?php echo base_url('dashboard') ?>">
                    <i class="fa fa-laptop"></i> <span>DASHBOARD</span>
                    
                </a>
            </li>
            <?php
                $menu = $this->db->get_where('menu', array('is_parent' => 0, 'is_active' => 1));
                foreach ($menu->result() as $m) {
                    // chek ada sub menu
                    $submenu = $this->db->get_where('menu', array('is_parent' => $m->id, 'is_active' => 1));
                    if ($submenu->num_rows() > 0) {
                        // tampilkan submenu
                        echo "<li class='treeview'>
                                    " . anchor('#',  "<i class='$m->icon'></i> <span>" . strtoupper($m->name) . ' </span><i class="fa fa-angle-left pull-right"></i>') . "
                                        <ul class='treeview-menu'>";
                        foreach ($submenu->result() as $s) {
                            echo "<li>" . anchor($s->link, "<i class='$s->icon'></i> <span>" . strtoupper($s->name)) . "</span></li>";
                        }
                        echo "</ul>
                                    </li>";
                    } else {
                        echo "<li>" . anchor($m->link, "<i class='$m->icon'></i> <span>" . strtoupper($m->name)) . "</span></li>";
                    }
                }
                ?>
        </ul>
        <?php else: ?>
        <ul class="sidebar-menu">
            <li>
                <a href="<?php echo base_url('dashboard') ?>">
                    <i class="fa fa-laptop"></i> <span>DASHBOARD</span>
                    
                </a>
            </li>
        <?php endif; ?>
    </section>
</aside>