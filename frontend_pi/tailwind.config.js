/** @type {import('tailwindcss').Config} */
// module.exports = {
//   content: [
//     "./src/**/*.{js,jsx,ts,tsx}",
//   ],
//   theme: {
//     extend: {},
//   },
//   plugins: [],
// }

module.exports = {
  content: [
  "./src/**/*.{js,jsx,ts,tsx}",
   "./node_modules/flowbite/**/*.js", 
   "./src/**/*.{html,js}",
   "./node_modules/tw-elements/dist/js/**/*.js"],
  theme: {
  extend: {},
   },
  plugins: [
  require('flowbite/plugin', "tw-elements/dist/plugin.cjs")
    ],
    darkMode: "class"
  }