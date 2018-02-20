// EDIT ARTIST PAGE VIEW //

function showEditBioForm() {
  const editFormBio = document.getElementById("edit-form-bio");
  const editBioBtn = document.getElementById("edit-bio-btn");

  editBioBtn.addEventListener("click", (event) => {
    event.preventDefault();
    editFormBio.classList.remove("hidden");
  });
};

export{showEditBioForm};
