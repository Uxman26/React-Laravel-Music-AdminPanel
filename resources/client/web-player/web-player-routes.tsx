import {RouteObject, useRoutes} from 'react-router-dom';
import {ChannelPage} from '@app/web-player/channels/channel-page';
import {WebPlayerLayout} from '@app/web-player/layout/web-player-layout';
import {ArtistPage} from '@app/web-player/artists/artist-page/artist-page';
import {PlaylistPage} from '@app/web-player/playlists/playlist-page/playlist-page';
import {AlbumPage} from '@app/web-player/albums/album-page';
import {LibraryTracksPage} from '@app/web-player/library/library-tracks-page';
import {AuthRoute} from '@common/auth/guards/auth-route';
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
import {TrackEmbed} from '@app/web-player/tracks/track-embed';
import {AlbumEmbed} from '@app/web-player/albums/album-embed';
import {HomepageChannelPage} from '@app/web-player/channels/homepage-channel-page';
import {NotFoundPage} from '@common/ui/not-found-page/not-found-page';
import {LyricsPage} from '@app/web-player/tracks/lyrics/lyrics-page';
import {AccountPage} from '@app/web-player/users/account-page';
import {MenuPage} from '@app/web-player/users/menu-page';
import {NotificationsPage} from '@app/web-player/users/notifications-page';
import {AccountSettingsPage} from '@app/web-player/users/account-settings/account-settings-page';
import {ContactUsPage} from '@app/web-player/pages/contact/contact-us-page';
import {CustomPageLayout} from '@app/web-player/pages/custom-page/custom-page-layout';
import {PricingPage} from '@app/web-player/pages/billing/pricing-table/pricing-page';

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
    element: <WebPlayerLayout />,
    children: [
      {
        index: true,
        element: <HomepageChannelPage />,
      },
      // account
      {
        path: '/account',
        element: (
          <AuthRoute permission="accountPage.view">
            <AccountPage />
          </AuthRoute>
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
          <AuthRoute permission="menuPage.view">
            <MenuPage />
          </AuthRoute>
        ),
      },
      // contact
      {
        path: '/contact',
        element: (
          <AuthRoute permission="contactPage.view">
            <ContactUsPage />
          </AuthRoute>
        ),
      },
      // custom page
      {
        path: '/pages/:pageSlug',
        element: (
          <AuthRoute permission="custom_pages.view">
            <CustomPageLayout  />
          </AuthRoute>
        ),
      },
      {
        path: '/pages/:pageId/:pageSlug',
        element: (
          <AuthRoute permission="custom_pages.view">
            <CustomPageLayout  />
          </AuthRoute>
        ),
      },
      // pricing
      {
        path: '/pricing',
        element: (
          <AuthRoute permission="plans.view">
            <PricingPage />
          </AuthRoute>
        ),
      },
      // lyrics
      {
        path: 'lyrics',
        element: (
          <AuthRoute permission="lyrics.view">
            <LyricsPage />
          </AuthRoute>
        ),
      },
      // artists
      {
        path: 'artist/:artistId/:artistName',
        element: (
          <AuthRoute permission="artists.view">
            <ArtistPage  />
          </AuthRoute>
        ),
      },
      {
        path: 'artist/:artistId',
        element: (
          <AuthRoute permission="artists.view">
            <ArtistPage  />
          </AuthRoute>
        ),
      },
      // playlists
      {
        path: 'playlist/:playlistId/:playlistName',
        element: (
          <AuthRoute permission="playlists.view">
            <PlaylistPage  />
          </AuthRoute>
        ),
      },
      // albums
      {
        path: 'album/:albumId/:artistName/:albumName',
        element: (
          <AuthRoute permission="albums.view">
            <AlbumPage  />
          </AuthRoute>
        ),
      },
      // tracks
      {
        path: 'track/:trackId/:trackName',
        element: (
          <AuthRoute permission="tracks.view">
            <TrackPage  />
          </AuthRoute>
        ),
      },
      // tags
      {
        path: 'tag/:tagName',
        element: (
          <AuthRoute permission="tags.view">
            <TagMediaPage />
          </AuthRoute>
        ),
      },
      {
        path: 'tag/:tagName/tracks',
        element: (
          <AuthRoute permission="tags.view">
            <TagMediaPage />
          </AuthRoute>
        ),
      },
      {
        path: 'tag/:tagName/albums',
        element: (
          <AuthRoute permission="tags.view">
            <TagMediaPage />
          </AuthRoute>
        ),
      },
      // user profile
      {
        path: 'user/:userId/:userName',
        element: (
          <AuthRoute permission="users.view">
            <UserProfilePage />
          </AuthRoute>
        ),
      },
      {
        path: 'user/:userId/:userName/:tabName',
        element: (
          <AuthRoute permission="users.view">
            <UserProfilePage />
          </AuthRoute>
        ),
      },
      // radio
      {
        path: 'radio/:seedType/:seedId/:seeName',
        element: (
          <AuthRoute permission="radioPage.view">
            <RadioPage />
          </AuthRoute>
        ),
      },
      // search
      {
        path: 'search',
        element: (
          <AuthRoute permission="searchPage.view">
            <SearchResultsPage />
          </AuthRoute>
        ),
      },
      {
        path: 'search/:searchQuery',
        element: (
          <AuthRoute permission="searchPage.view">
            <SearchResultsPage />
          </AuthRoute>
        ),
      },
      {
        path: 'search/:searchQuery/:tabName',
        element: (
          <AuthRoute permission="searchPage.view">
            <SearchResultsPage />
          </AuthRoute>
        ),
      },
      // library
      {
        path: '/library',
        element: (
          <AuthRoute permission="libraryPage.view">
            <LibraryPage />
          </AuthRoute>
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
          <AuthRoute permission="channels.view">
            <ChannelPage />
          </AuthRoute>
        ),
      },
      {
        path: 'channel/:slugOrId',
        element: (
          <AuthRoute permission="channels.view">
            <ChannelPage />
          </AuthRoute>
        ),
      },
      {
        path: ':slugOrId/:restriction',
        element: (
          <AuthRoute permission="channels.view">
            <ChannelPage />
          </AuthRoute>
        ),
      },
      {
        path: 'channel/:slugOrId/:restriction',
        element: (
          <AuthRoute permission="channels.view">
            <ChannelPage />
          </AuthRoute>
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
