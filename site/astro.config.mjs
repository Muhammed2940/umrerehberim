// @ts-check
import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';
import { readFile, writeFile } from 'node:fs/promises';
import { fileURLToPath } from 'node:url';
import { ALAN, SITE_URL } from './src/config.ts';

/** src/htaccess.tpl → dist/.htaccess (içindeki __ALAN__ config.ts'teki ALAN ile değişir). */
function htaccess() {
  return {
    name: 'umre-htaccess',
    hooks: {
      'astro:build:done': async ({ dir }) => {
        const tpl = await readFile(new URL('./src/htaccess.tpl', import.meta.url), 'utf8');
        const hedef = fileURLToPath(new URL('.htaccess', dir));
        await writeFile(hedef, tpl.replaceAll('__ALAN__', ALAN), 'utf8');
      },
    },
  };
}

export default defineConfig({
  site: SITE_URL,
  trailingSlash: 'always',
  build: {
    format: 'directory',
    // CSP 'style-src self' için satır içi stil üretme.
    inlineStylesheets: 'never',
  },
  vite: {
    plugins: [tailwindcss()],
  },
  integrations: [htaccess()],
});
