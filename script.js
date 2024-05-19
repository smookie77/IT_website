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
    { href: "https://radiolubiteli.start.bg/", text: "Join a radio club!" },
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
function addCSS(cssPath) {
  const link = document.createElement('link');
  link.rel = 'stylesheet';
  link.href = cssPath;
  document.head.appendChild(link);
}

function createFooter() {
  const footerDiv = document.createElement('div');
  footerDiv.className = 'footer';

  const contactsDiv = document.createElement('div');
  contactsDiv.className = 'Contacts';

  const contactsHeader = document.createElement('h3');
  contactsHeader.textContent = 'Contacts';

  const emailLink1 = document.createElement('a');
  emailLink1.href = 'mailto:antoan.m.tsonkov.2023@elsys-bg.org';
  const emailText1 = document.createElement('p');
  emailText1.textContent = 'smookie77';
  const emailLink2 = document.createElement('a');
  emailLink2.href = 'mailto:aleksandar.a.grigorov.2023@elsys-bg.org';
  const emailText2 = document.createElement('p');
  emailText2.textContent = 'Mr.G';
  emailLink3.href = 'mailto:aleksandar.v.beshev.2023@elsys-bg.org';
  const emailText3 = document.createElement('p');
  emailText3.textContent = 'MrBeshev';

  emailLink1.appendChild(emailText1);
  emailLink2.appendChild(emailText2);
  emailLink2.appendChild(emailText3);
  contactsDiv.appendChild(contactsHeader);
  contactsDiv.appendChild(emailLink1);
  contactsDiv.appendChild(emailLink2);
  contactsDiv.appendChild(emailLink3);
  footerDiv.appendChild(contactsDiv);
  document.body.appendChild(footerDiv);
}

addCSS('/hambg/elements/footer.css');
createFooter();


addCSS("/hambg/elements/header.css");
createHeader();

document.addEventListener("DOMContentLoaded", function() {
  fetch('navbar.html')
    .then(response => response.text())
    .then(data => {
      document.getElementById('navbar').innerHTML = data;
    });
});
