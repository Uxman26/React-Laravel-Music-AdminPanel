import {useUser} from '../use-user';
import {ProgressCircle} from '@common/ui/progress/progress-circle';
import {SocialLoginPanel} from './social-login-panel';
import {BasicInfoPanel} from './basic-info-panel/basic-info-panel';
import {ChangePasswordPanel} from './change-password-panel/change-password-panel';
import {LocalizationPanel} from './localization-panel';
import {AccessTokenPanel} from './access-token-panel/access-token-panel';
import {DangerZonePanel} from './danger-zone-panel/danger-zone-panel';
import {Trans} from '@common/i18n/trans';
import {StaticPageTitle} from '@common/seo/static-page-title';
import {AccountSettingsPanel} from '@common/auth/ui/account-settings/account-settings-panel';
import {TwoFactorStepper} from '@common/auth/ui/two-factor/stepper/two-factor-auth-stepper';
import {
  AccountSettingsId,
  AccountSettingsSidenav,
} from '@common/auth/ui/account-settings/account-settings-sidenav';
import {SessionsPanel} from '@common/auth/ui/account-settings/sessions-panel/sessions-panel';
import {useContext} from 'react';
import {SiteConfigContext} from '@common/core/settings/site-config-context';
import {DashboardLayout} from '@common/ui/layout/dashboard-layout';
import {SidedavFrontend} from '@app/web-player/layout/sidenav-frontend';
import {Sidenav} from '@app/web-player/layout/sidenav';
import {DashboardContent} from '@common/ui/layout/dashboard-content';
import {useSettings} from '@common/core/settings/use-settings';
import {useIsMobileMediaQuery} from '@common/utils/hooks/is-mobile-media-query';
import {PlayerNavbarLayoutMobile} from '@app/web-player/layout/player-navbar-layout-mobile';
import {PlayerNavbarLayoutDesktop} from '@app/web-player/layout/player-navbar-layout-desktop';
import {MobilePlayerControls} from '@app/web-player/player-controls/mobile-player-controls';
import {DesktopPlayerControls} from '@app/web-player/player-controls/desktop-player-controls';
import {PlayerContext} from '@common/player/player-context';
import {playerStoreOptions} from '@app/web-player/state/player-store-options';
import {PlayerOverlay} from '@app/web-player/overlay/player-overlay';
import {QueueSidenav} from '@app/web-player/layout/queue/queue-sidenav';
import {useMediaQuery} from '@common/utils/hooks/use-media-query';
import {usePlayerStore} from '@common/player/hooks/use-player-store';

export function AccountSettingsPage() {
  const {auth} = useContext(SiteConfigContext);
  const {data, isLoading} = useUser('me', {
    with: ['roles', 'social_profiles', 'tokens'],
  });
  const {player} = useSettings();
  const isMobile = useIsMobileMediaQuery();

  const content = (
    <div className="min-h-screen bg-alt">
      <StaticPageTitle>
        <Trans message="Account Settings" />
      </StaticPageTitle>
      <DashboardLayout
        name="web-player"
        initialRightSidenavStatus={player?.hide_queue ? 'closed' : 'open'}
      >
        {isMobile ? (
          <PlayerNavbarLayoutMobile
            size="sm"
            menuPosition="account-settings-page"
            className="flex-shrink-0"
          />
        ) : (
          <PlayerNavbarLayoutDesktop
            size="sm"
            menuPosition="account-settings-page"
            className="flex-shrink-0"
          />
        )}
        <SidedavFrontend position="left" display="block">
          <Sidenav />
        </SidedavFrontend>
        <DashboardContent>
          <div>
            <div className="container mx-auto px-24 py-24">
              <h1 className="text-3xl">
                <Trans message="Account settings" />
              </h1>
              <div className="mb-40 text-base text-muted">
                <Trans message="View and update your account details, profile and more." />
              </div>
              {isLoading || !data ? (
                <ProgressCircle
                  className="my-80"
                  aria-label="Loading user.."
                  isIndeterminate
                />
              ) : (
                <div className="flex items-start gap-24">
                  <AccountSettingsSidenav />
                  <main className="flex-auto">
                    {auth.accountSettingsPanels?.map(panel => (
                      <panel.component key={panel.id} user={data.user} />
                    ))}
                    <BasicInfoPanel user={data.user} />
                    <SocialLoginPanel user={data.user} />
                    <ChangePasswordPanel />
                    <AccountSettingsPanel
                      id={AccountSettingsId.TwoFactor}
                      title={<Trans message="Two factor authentication" />}
                    >
                      <div className="max-w-580">
                        <TwoFactorStepper user={data.user} />
                      </div>
                    </AccountSettingsPanel>
                    <SessionsPanel user={data.user} />
                    <LocalizationPanel user={data.user} />
                    <AccessTokenPanel user={data.user} />
                    <DangerZonePanel />
                  </main>
                </div>
              )}
            </div>
          </div>
        </DashboardContent>
        <RightSidenav />
        {isMobile ? <MobilePlayerControls /> : <DesktopPlayerControls />}
      </DashboardLayout>
    </div>
  );
  
  return (
    <PlayerContext id="web-player" options={playerStoreOptions}>
      {content}
      <PlayerOverlay />
    </PlayerContext>
  );
}

function RightSidenav() {
  const isOverlay = useMediaQuery('(max-width: 1280px)');
  const hideQueue = usePlayerStore(s => !s.shuffledQueue.length);
  return (
    <SidedavFrontend
      position="right"
      size="w-256"
      mode={isOverlay ? 'overlay' : undefined}
      overlayPosition="absolute"
      display="block"
      forceClosed={hideQueue}
    >
      <QueueSidenav />
    </SidedavFrontend>
  );
}
