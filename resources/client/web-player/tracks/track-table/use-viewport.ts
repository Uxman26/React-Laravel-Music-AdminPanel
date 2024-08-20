import { useState, useEffect } from 'react';
// import { useViewport } from '@app/web-player/tracks/track-table/use-viewport';
export function useViewport() {
    const [width, setWidth] = useState(window.innerWidth);

    useEffect(() => {
        const handleResize = () => setWidth(window.innerWidth);
        window.addEventListener('resize', handleResize);
        return () => window.removeEventListener('resize', handleResize);
    }, []);

    return { width };
}
