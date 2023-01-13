function trHref(event, href) {
  if (!event.ctrlKey && !event.altKey) window.location = href;
}
