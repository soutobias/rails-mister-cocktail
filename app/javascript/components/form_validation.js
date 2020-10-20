const validRating = (rating) => {
  const re = /^[1-5]$/;
  const ratingNew = document.querySelector('#review_description');
  if (re.test(rating)) {
    ratingNew.classList.add("is-valid");
    ratingNew.classList.remove("is-invalid");
  } else {
    ratingNew.classList.add("is-invalid");
    ratingNew.classList.remove("is-valid");
  }
};

const verifyValid = () => {
  const input2 = document.querySelector('#new_review');
  const input = inpu2.querySelectorAll('.form-control');
  let returned = true;
  input.forEach((value) => {
    if (value.classList.contains('is-unvalid')) {
      returned = false;
    }
    if (!value.classList.contains('is-valid')) {
      returned = false;
    }
  });
  return returned;
};

export { validRating, verifyValid };
