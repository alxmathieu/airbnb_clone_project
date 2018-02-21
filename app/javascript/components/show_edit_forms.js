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

function showCreatePerfForm() {

  const createPerfBtn = document.getElementById("create-perf-btn")
  const createPerfForm = document.getElementById("add-perf-form")

  createPerfBtn.addEventListener("click", (event) => {
    event.preventDefault();
    createPerfForm.classList.remove("hidden");
  });
}

export{showCreatePerfForm};

