import { cva, type VariantProps } from "class-variance-authority";

import { cn } from "@/lib/utils";

export const linkVariants = cva(
  "focus:ring-ring inline-flex items-center rounded-full font-semibold capitalize transition-colors focus:outline-none focus:ring-2 focus:ring-offset-2 focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-5",
  {
    variants: {
      variant: {
        default: "text-primary underline-offset-4 hover:underline",
        badge:
          "hover:bg-primary hover:text-primary-foreground border px-2.5 py-0.5 text-xs",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  },
);

export const Link: React.FC<
  React.AnchorHTMLAttributes<HTMLAnchorElement> &
    VariantProps<typeof linkVariants>
> = ({ className, variant, ...props }) => {
  return <a className={cn(linkVariants({ variant }), className)} {...props} />;
};
