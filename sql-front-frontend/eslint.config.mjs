import { dirname } from "path";
import { fileURLToPath } from "url";
import { FlatCompat } from "@eslint/eslintrc";

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const compat = new FlatCompat({
  baseDirectory: __dirname,
});

const eslintConfig = [
  {
    ignores: [
      "node_modules/**",
      ".next/**",
      "out/**",
      "build/**",
      "next-env.d.ts",
      ".eslintrc.js",
      "next.config.ts",
    ],
  },
  ...compat.config({
    extends: ["next/core-web-vitals", "next/typescript", "prettier"],
    rules: {
      curly: ["error", "all"],
      semi: ["error"],
      quotes: ["error", "double"],
      "prefer-arrow-callback": ["error"],
      "prefer-template": ["error"],
      "no-unused-vars": ["warn",
        {
          "varsIgnorePattern": "^_",
          "argsIgnorePattern": "^_"
        }
      ],
      "eol-last": "error",
      "sort-imports": ["error", { ignoreDeclarationSort: true }],
    },
  }),
];

export default eslintConfig;
