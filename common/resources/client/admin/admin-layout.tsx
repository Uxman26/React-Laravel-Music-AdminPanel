import {Outlet} from 'react-router-dom';
import {AdminSidebar} from './admin-sidebar';
import {DashboardLayout} from '../ui/layout/dashboard-layout';
import {DashboardContent} from '../ui/layout/dashboard-content';
import {DashboardSidenav} from '../ui/layout/dashboard-sidenav';
import {DashboardNavbar} from '../ui/layout/dashboard-navbar';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {MobileNavbarAdmin} from '@app/web-player/layout/mobile-navbar-admin';

export function AdminLayout() {
  const isMobile = useIsMobileMediaQuery();

  return (
    <DashboardLayout name="admin" leftSidenavCanBeCompact>
      <DashboardNavbar size="sm" menuPosition="admin-navbar" />
      <DashboardSidenav position="left" size="sm">
        <AdminSidebar />
      </DashboardSidenav>
      <DashboardContent>
      {isMobile ? (
      <div className="bg dark:bg-alt pb-124">
        <Outlet />
      </div>
      ) : (
        <div className="bg dark:bg-alt">
        <Outlet />
      </div>
      )}
      </DashboardContent>
      {isMobile && (
        <div className="border-t z-20 fixed bottom-0 left-0 right-0 mx-auto bg-background/95">
          <MobileNavbarAdmin />
        </div>
      )}
    </DashboardLayout>
  );
}
