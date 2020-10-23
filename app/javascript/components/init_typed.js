import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Best", "Great"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
