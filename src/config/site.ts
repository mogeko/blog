export const siteConfig: SiteConfig = {
  title: "Mogeko's Blog",
  author: { name: "Mogeko", url: "https://github.com/mogeko" },
  footer: {
    license: {
      name: "CC BY-NC-SA 4.0",
      url: "https://creativecommons.org/licenses/by-nc/4.0",
    },
    copyrightYear: `2017 - ${new Date().getFullYear()}`,
  },
};

type SiteConfig = {
  title: string;
  author: { name: string; url: string };
  footer?: {
    license: { name: string; url: string };
    copyrightYear: string | number;
  };
};
