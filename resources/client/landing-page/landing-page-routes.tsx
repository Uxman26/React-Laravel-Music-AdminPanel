import {RouteObject, useRoutes} from 'react-router-dom';
import {LandingPageLayout} from '@app/landing-page/layout/landing-page-layout';
import {TrackEmbed} from '@app/web-player/tracks/track-embed';
import {AlbumEmbed} from '@app/web-player/albums/album-embed';
import {ChannelPage} from '@app/web-player/channels/channel-page';
import {ArtistPage} from '@app/web-player/artists/artist-page/artist-page';
import {PlaylistPage} from '@app/web-player/playlists/playlist-page/playlist-page';
import {AlbumPage} from '@app/web-player/albums/album-page';
import {LibraryTracksPage} from '@app/web-player/library/library-tracks-page';
import {LibraryAlbumsPage} from '@app/web-player/library/library-albums-page';
import {LibraryArtistsPage} from '@app/web-player/library/library-artists-page';
import {LibraryHistoryPage} from '@app/web-player/library/library-history-page';
import {TrackPage} from '@app/web-player/tracks/track-page';
import {UserProfilePage} from '@app/web-player/user-profile/user-profile-page';
import {TagMediaPage} from '@app/web-player/genres/tag-media-page';
import {RadioPage} from '@app/web-player/radio/radio-page';
import {SearchResultsPage} from '@app/web-player/search/search-results-page';
import {LibraryPage} from '@app/web-player/library/library-page';
import {LibraryPlaylistsPage} from '@app/web-player/library/library-playlists-page';
import {HomepageChannelPage} from '@app/web-player/channels/homepage-channel-page';
import {NotFoundPage} from '@common/ui/not-found-page/not-found-page';
import {LyricsPage} from '@app/web-player/tracks/lyrics/lyrics-page';
import {AccountPage} from '@app/web-player/users/account-page';
import {NotificationsPage} from '@app/web-player/users/notifications-page';
import {AccountSettingsPage} from '@app/web-player/users/account-settings/account-settings-page';
import {MenuPage} from '@app/web-player/users/menu-page';
import {ContactUsPage} from '@app/web-player/pages/contact/contact-us-page';
import {CustomPageLayout} from '@app/web-player/pages/custom-page/custom-page-layout';
import {PricingPage} from '@app/web-player/pages/billing/pricing-table/pricing-page';
import {AuthRoute} from '@common/auth/guards/auth-route';
import {GuestRoute} from '@common/auth/guards/guest-route';

const RouteConfig: RouteObject[] = [
  {
    path: 'track/:trackId/:trackName/embed',
    element: <TrackEmbed />,
  },
  {
    path: 'album/:albumId/:artistName/:albumName/embed',
    element: <AlbumEmbed />,
  },
  {
    path: '/',
    element: <LandingPageLayout />,
    children: [
      {
        index: true,
        element: <HomepageChannelPage />,
      },
      // account
      {
        path: '/account',
        element: (
          <GuestRoute permission="accountPage.view">
            <AccountPage  />
          </GuestRoute>
        ),
      },
      {
        path: '/account/notifications',
        element: (
          <AuthRoute permission="accountPage.view">
            <NotificationsPage />
          </AuthRoute>
        ),
      },
      {
        path: '/account/settings',
        element: (
          <AuthRoute permission="accountPage.view">
            <AccountSettingsPage />
          </AuthRoute>
        ),
      },
      // menu
      {
        path: '/menu',
        element: (
          <GuestRoute permission="menuPage.view">
            <MenuPage  />
          </GuestRoute>
        ),
      },
      // contact
      {
        path: '/contact',
        element: (
          <GuestRoute permission="contactPage.view">
            <ContactUsPage  />
          </GuestRoute>
        ),
      },
      // custom page
      {
        path: '/pages/:pageSlug',
        element: (
          <GuestRoute permission="custom_pages.view">
            <CustomPageLayout  />
          </GuestRoute>
        ),
      },
      {
        path: '/pages/:pageId/:pageSlug',
        element: (
          <GuestRoute permission="custom_pages.view">
            <CustomPageLayout  />
          </GuestRoute>
        ),
      },
      // pricing
      {
        path: 'pricing',
        element: (
          <GuestRoute permission="plans.view">
            <PricingPage />
          </GuestRoute>
        ),
      },
      // lyrics
      {
        path: 'lyrics',
        element: (
          <GuestRoute permission="lyrics.view">
            <LyricsPage />
          </GuestRoute>
        ),
      },
      // artists
      {
        path: 'artist/:artistId/:artistName',
        element: (
          <GuestRoute permission="artists.view">
            <ArtistPage  />
          </GuestRoute>
        ),
      },
      {
        path: 'artist/:artistId',
        element: (
          <GuestRoute permission="artists.view">
            <ArtistPage  />
          </GuestRoute>
        ),
      },
      // playlists
      {
        path: 'playlist/:playlistId/:playlistName',
        element: (
          <GuestRoute permission="playlists.view">
            <PlaylistPage  />
          </GuestRoute>
        ),
      },
      // albums
      {
        path: 'album/:albumId/:artistName/:albumName',
        element: (
          <GuestRoute permission="albums.view">
            <AlbumPage  />
          </GuestRoute>
        ),
      },
      // tracks
      {
        path: 'track/:trackId/:trackName',
        element: (
          <GuestRoute permission="tracks.view">
            <TrackPage  />
          </GuestRoute>
        ),
      },
      // tags
      {
        path: 'tag/:tagName',
        element: (
          <GuestRoute permission="tags.view">
            <TagMediaPage />
          </GuestRoute>
        ),
      },
      {
        path: 'tag/:tagName/tracks',
        element: (
          <GuestRoute permission="tags.view">
            <TagMediaPage />
          </GuestRoute>
        ),
      },
      {
        path: 'tag/:tagName/albums',
        element: (
          <GuestRoute permission="tags.view">
            <TagMediaPage />
          </GuestRoute>
        ),
      },
      // user profile
      {
        path: 'user/:userId/:userName',
        element: (
          <GuestRoute permission="users.view">
            <UserProfilePage />
          </GuestRoute>
        ),
      },
      {
        path: 'user/:userId/:userName/:tabName',
        element: (
          <GuestRoute permission="users.view">
            <UserProfilePage />
          </GuestRoute>
        ),
      },
      // radio
      {
        path: 'radio/:seedType/:seedId/:seeName',
        element: (
          <GuestRoute permission="radioPage.view">
            <RadioPage />
          </GuestRoute>
        ),
      },
      // search
      {
        path: 'search',
        element: (
          <GuestRoute permission="searchPage.view">
            <SearchResultsPage />
          </GuestRoute>
        ),
      },
      {
        path: 'search/:searchQuery',
        element: (
          <GuestRoute permission="searchPage.view">
            <SearchResultsPage />
          </GuestRoute>
        ),
      },
      {
        path: 'search/:searchQuery/:tabName',
        element: (
          <GuestRoute permission="searchPage.view">
            <SearchResultsPage />
          </GuestRoute>
        ),
      },
      // library
      {
        path: '/library',
        element: (
          <GuestRoute permission="libraryPage.view">
            <LibraryPage />
          </GuestRoute>
        ),
      },
      {
        path: '/library/songs',
        element: (
          <AuthRoute permission="libraryPage.view">
            <LibraryTracksPage />
          </AuthRoute>
        ),
      },
      {
        path: '/library/playlists',
        element: (
          <AuthRoute permission="libraryPage.view">
            <LibraryPlaylistsPage />
          </AuthRoute>
        ),
      },
      {
        path: '/library/albums',
        element: (
          <AuthRoute permission="libraryPage.view">
            <LibraryAlbumsPage />
          </AuthRoute>
        ),
      },
      {
        path: '/library/artists',
        element: (
          <AuthRoute permission="libraryPage.view">
            <LibraryArtistsPage />
          </AuthRoute>
        ),
      },
      {
        path: '/library/history',
        element: (
          <AuthRoute permission="libraryPage.view">
            <LibraryHistoryPage />
          </AuthRoute>
        ),
      },
      // Channels
      {
        path: ':slugOrId',
        element: (
          <GuestRoute permission="channels.view">
            <ChannelPage />
          </GuestRoute>
        ),
      },
      {
        path: 'channel/:slugOrId',
        element: (
          <GuestRoute permission="channels.view">
            <ChannelPage />
          </GuestRoute>
        ),
      },
      {
        path: ':slugOrId/:restriction',
        element: (
          <GuestRoute permission="channels.view">
            <ChannelPage />
          </GuestRoute>
        ),
      },
      {
        path: 'channel/:slugOrId/:restriction',
        element: (
          <GuestRoute permission="channels.view">
            <ChannelPage />
          </GuestRoute>
        ),
      },
      {
        path: '*',
        element: <NotFoundPage />,
      },
    ],
  },
];

export default function WebPlayerRoutes() {
  return useRoutes(RouteConfig);
}
