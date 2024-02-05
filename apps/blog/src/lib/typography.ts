import Heading1 from "@/components/mdx/h1.astro";
import Heading2 from "@/components/mdx/h2.astro";
import Heading3 from "@/components/mdx/h3.astro";
import Heading4 from "@/components/mdx/h4.astro";
import Paragraph from "@/components/mdx/p.astro";
import Blockquote from "@/components/mdx/blockquote.astro";
import List from "@/components/mdx/ul.astro";

export const components = {
  h1: Heading1,
  h2: Heading2,
  h3: Heading3,
  h4: Heading4,
  p: Paragraph,
  blockquote: Blockquote,
  ul: List,
};
