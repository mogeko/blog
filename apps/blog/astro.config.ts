import { defineConfig } from "astro/config";

import react from "@astrojs/react";
import tailwind from "@astrojs/tailwind";
import mdx from "@astrojs/mdx";
import sitemap from "@astrojs/sitemap";

import emoji from "remark-emoji";
import mermaid from "rehype-mermaid";

// https://astro.build/config
export default defineConfig({
  site: "https://mogeko.me",
  markdown: {
    shikiConfig: {
      theme: "andromeeda",
    },
    remarkPlugins: [[emoji, { accessible: true }]],
    rehypePlugins: [mermaid],
  },
  integrations: [
    react(),
    tailwind({ applyBaseStyles: false }),
    mdx(),
    sitemap(),
  ],
});
