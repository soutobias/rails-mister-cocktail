import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Best", "Great", "Delicious"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
