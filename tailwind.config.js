/** @type {import('tailwindcss').Config} */
export default {
  content: ["./index.html", "./src/**/*.{vue,js,ts,jsx,tsx}"],
  theme: {
    extend: {
      spacing: {
        "40px": "40px",
      },
      padding: {
        "40px": "40px",
      },
    },
  },
  plugins: [],
};
