function addCSS(cssPath) {
  const link = document.createElement("link");
  link.rel = "stylesheet";
  link.href = cssPath;
  document.head.appendChild(link);
}

function createHeader() {
  const headerDiv = document.createElement("div");
  headerDiv.className = "header";

  const logoDiv = document.createElement("div");
  logoDiv.className = "logo";

  const logoLink = document.createElement("a");
  logoLink.href = "/hambg/main.html";

  const logoImage = document.createElement("img");
  logoImage.src = "/hambg/resources/antenna.png";
  const logoText = document.createElement("h1");
  logoText.textContent = "HamBG";

  logoLink.appendChild(logoImage);
  logoLink.appendChild(logoText);
  logoDiv.appendChild(logoLink);

  const linksDiv = document.createElement("div");
  linksDiv.className = "links";

  const links = [
    { href: "", text: "Become a radio amateur" },
    { href: "", text: "Join a radio club!" },
    { href: "http://crc.bg", text: "CRC.BG*" },
    { href: "/hambg/about.html", text: "About" },
  ];

  links.forEach((link) => {
    const anchor = document.createElement("a");
    anchor.href = link.href;
    const linkText = document.createElement("h2");
    linkText.textContent = link.text;
    anchor.appendChild(linkText);
    linksDiv.appendChild(anchor);
  });

  headerDiv.appendChild(logoDiv);
  headerDiv.appendChild(linksDiv);
  document.body.prepend(headerDiv);
}

addCSS("/hambg/elements/header.css");
createHeader();
