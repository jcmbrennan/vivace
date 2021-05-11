//app/javascript/packs/images.js
//Uncomment to copy all static images under ../images to the output folder and reference them
//with the image_pack_tag helper in views (e.g. <%=image_pack_tag 'rails.png' %>)
//or the 'imagePath' JavaScript helper below.

//import all image files in a folder:

const images = require.context('../images', true)
const imagePath = (name) => images(name, true)