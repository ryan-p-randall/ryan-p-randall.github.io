class InternalLinksHandler {
    constructor() {
        this.addAttributesToInternalLinks();
    }

    addAttributesToInternalLinks() {
        // Select all anchor tags
        const links = document.querySelectorAll('a[href]');

        // Iterate over each link
        links.forEach(link => {
            // Check if the link is internal
            if (this.isInternalLink(link)) {
                // Add internal link class
                link.classList.add("internal-link");
            }
        });
    }

    isInternalLink(link) {
        // Get the location of the current document
        const currentLocation = window.location.hostname;

        // Extract the domain from the link's href attribute
        const linkDomain = new URL(link.href).hostname;

        // Check if the link's domain is different from the current location's domain
        return currentLocation === linkDomain;
    }
}

// Initialize the InternalLinksHandler when the DOM is fully loaded
document.addEventListener("DOMContentLoaded", function() {
    new InternalLinksHandler();
});