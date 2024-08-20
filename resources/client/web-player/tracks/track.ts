import {Lyric} from './lyrics/lyric';
import {Genre} from '../genres/genre';
import {Tag} from '@common/tags/tag';
import {Artist} from '@app/web-player/artists/artist';
import {Album} from '@app/web-player/albums/album';

export const TRACK_MODEL = 'track';

export interface Track {
  id: number;
  name: string;
  duration?: number;
  duration_full?: number;
  artists?: Artist[];
  plays?: number;
  downloads?: number;
  popularity?: number;
  src?: string;
  mp3_file?: string;
  wav_file?: string;
  zip_file?: string;
  pdf_file?: string;
  image?: string;
  lyric?: Omit<Lyric, 'track'>;
  album?: Album;
  owner_id?: number;
  description?: string;
  genres?: Genre[];
  tags?: Tag[];
  likes_count?: number;
  reposts_count?: number;
  comments_count?: number;
  updated_at?: string;
  created_at?: string;
  // available in library tracks page only
  added_at?: string;
  model_type: 'track';
}
