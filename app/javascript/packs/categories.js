require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import 'bootstrap'
import '../stylesheets/categories'

document.addEventListener("turbolinks:load", () => {
	$('[data-toggle="tooltip"]').tooltip()
	$('[data-toggle="popover"]').popover()
})